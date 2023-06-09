//
//  PagingCollectionView.swift
//  Alamofire
//
//  Created by QUANHS on 01/06/2023.
//
import UIKit
import RxCocoa
import RxSwift
import ESPullToRefresh

open class PagingCollectionView: UICollectionView {
    private let _refreshControl = UIRefreshControl()
    
    open var isRefreshing: Binder<Bool> {
        return Binder(self) { collectionView, loading in
            if collectionView.refreshHeader == nil {
                if loading {
                    collectionView._refreshControl.beginRefreshing()
                } else {
                    if collectionView._refreshControl.isRefreshing {
                        collectionView._refreshControl.endRefreshing()
                    }
                }
            } else {
                if loading {
                    collectionView.es.startPullToRefresh()
                } else {
                    collectionView.es.stopPullToRefresh()
                }
            }
        }
    }
    
    open var isLoadingMore: Binder<Bool> {
        return Binder(self) { collectionView, loading in
            if loading {
                collectionView.es.base.footer?.startRefreshing()
            } else {
                collectionView.es.stopLoadingMore()
            }
        }
    }
    
    private var _refreshTrigger = PublishSubject<Void>()
    
    open var refreshTrigger: Driver<Void> {
        return Driver.merge(
            _refreshTrigger
                .filter { [weak self] in
                    self?.refreshHeader != nil
                }
                .asDriver(onErrorJustReturn: ()),
            _refreshControl.rx.controlEvent(.valueChanged)
                .filter { [weak self] in
                    self?.refreshHeader == nil
                }
                .asDriver(onErrorJustReturn: ())
        )
         
    }
    
    private var _loadMoreTrigger = PublishSubject<Void>()
    
    open var loadMoreTrigger: Driver<Void> {
        _loadMoreTrigger.asDriver(onErrorJustReturn: ())
    }
    
    open var refreshHeader: (ESRefreshProtocol & ESRefreshAnimatorProtocol)? {
        didSet {
            removeRefreshControl()
            removeRefreshHeader()
            
            guard let header = refreshHeader else { return }
            
            es.addPullToRefresh(animator: header) { [weak self] in
                self?._refreshTrigger.onNext(())
            }
        }
    }
    
    open var refreshFooter: (ESRefreshProtocol & ESRefreshAnimatorProtocol)? {
        didSet {
            removeRefreshFooter()
            
            guard let footer = refreshFooter else { return }
            
            es.addInfiniteScrolling(animator: footer) { [weak self] in
                self?._loadMoreTrigger.onNext(())
            }
        }
    }
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        expiredTimeInterval = 20.0
        addRefreshControl()
        refreshFooter = RefreshFooterAnimator(frame: .zero)
    }
    
    open func addRefreshControl() {
        refreshHeader = nil
        
        if #available(iOS 10.0, *) {
            self.refreshControl = _refreshControl
        } else {
            guard !self.subviews.contains(_refreshControl) else { return }
            self.addSubview(_refreshControl)
        }
    }
    
    open func removeRefreshControl() {
        if #available(iOS 10.0, *) {
            self.refreshControl = nil
        } else {
            _refreshControl.removeFromSuperview()
        }
    }
    
    open func removeRefreshHeader() {
        es.removeRefreshHeader()
    }
    
    open func removeRefreshFooter() {
        es.removeRefreshFooter()
    }
    
}
