//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Ssl {
    /// DescribeCertificates请求参数结构体
    public struct DescribeCertificatesRequest: TCPaginatedRequest {
        /// 分页偏移量，从0开始。
        public let offset: UInt64?

        /// 每页数量，默认20。最大1000
        public let limit: UInt64?

        /// 搜索关键词，可搜索证书 ID、备注名称、域名。例如： a8xHcaIs。
        public let searchKey: String?

        /// 证书类型：CA = 客户端证书，SVR = 服务器证书。
        public let certificateType: String?

        /// 项目 ID。
        public let projectId: UInt64?

        /// 按到期时间排序：DESC = 降序， ASC = 升序。
        public let expirationSort: String?

        /// 证书状态：0 = 审核中，1 = 已通过，2 = 审核失败，3 = 已过期，4 = 已添加DNS记录，5 = 企业证书，待提交，6 = 订单取消中，7 = 已取消，8 = 已提交资料， 待上传确认函，9 = 证书吊销中，10 = 已吊销，11 = 重颁发中，12 = 待上传吊销确认函，13 = 免费证书待提交资料。
        public let certificateStatus: [UInt64]?

        /// 是否可部署，可选值：1 = 可部署，0 =  不可部署。
        public let deployable: UInt64?

        /// 是否筛选上传托管的 1筛选，0不筛选
        public let upload: Int64?

        /// 是否筛选可续期证书 1筛选 0不筛选
        public let renew: Int64?

        /// 筛选来源， upload：上传证书， buy：腾讯云证书， 不传默认全部
        public let filterSource: String?

        /// 是否筛选国密证书。1:筛选  0:不筛选
        public let isSM: Int64?

        /// 筛选证书是否即将过期，传1是筛选，0不筛选
        public let filterExpiring: UInt64?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, searchKey: String? = nil, certificateType: String? = nil, projectId: UInt64? = nil, expirationSort: String? = nil, certificateStatus: [UInt64]? = nil, deployable: UInt64? = nil, upload: Int64? = nil, renew: Int64? = nil, filterSource: String? = nil, isSM: Int64? = nil, filterExpiring: UInt64? = nil) {
            self.offset = offset
            self.limit = limit
            self.searchKey = searchKey
            self.certificateType = certificateType
            self.projectId = projectId
            self.expirationSort = expirationSort
            self.certificateStatus = certificateStatus
            self.deployable = deployable
            self.upload = upload
            self.renew = renew
            self.filterSource = filterSource
            self.isSM = isSM
            self.filterExpiring = filterExpiring
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case searchKey = "SearchKey"
            case certificateType = "CertificateType"
            case projectId = "ProjectId"
            case expirationSort = "ExpirationSort"
            case certificateStatus = "CertificateStatus"
            case deployable = "Deployable"
            case upload = "Upload"
            case renew = "Renew"
            case filterSource = "FilterSource"
            case isSM = "IsSM"
            case filterExpiring = "FilterExpiring"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCertificatesResponse) -> DescribeCertificatesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCertificatesRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, searchKey: self.searchKey, certificateType: self.certificateType, projectId: self.projectId, expirationSort: self.expirationSort, certificateStatus: self.certificateStatus, deployable: self.deployable, upload: self.upload, renew: self.renew, filterSource: self.filterSource, isSM: self.isSM, filterExpiring: self.filterExpiring)
        }
    }

    /// DescribeCertificates返回参数结构体
    public struct DescribeCertificatesResponse: TCPaginatedResponse {
        /// 总数量。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certificates: [Certificates]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case certificates = "Certificates"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Certificates`` list from the paginated response.
        public func getItems() -> [Certificates] {
            self.certificates ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取证书列表
    ///
    /// 本接口（DescribeCertificates）用于获取证书列表。
    @inlinable
    public func describeCertificates(_ input: DescribeCertificatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCertificatesResponse> {
        self.client.execute(action: "DescribeCertificates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取证书列表
    ///
    /// 本接口（DescribeCertificates）用于获取证书列表。
    @inlinable
    public func describeCertificates(_ input: DescribeCertificatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCertificatesResponse {
        try await self.client.execute(action: "DescribeCertificates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取证书列表
    ///
    /// 本接口（DescribeCertificates）用于获取证书列表。
    @inlinable
    public func describeCertificates(offset: UInt64? = nil, limit: UInt64? = nil, searchKey: String? = nil, certificateType: String? = nil, projectId: UInt64? = nil, expirationSort: String? = nil, certificateStatus: [UInt64]? = nil, deployable: UInt64? = nil, upload: Int64? = nil, renew: Int64? = nil, filterSource: String? = nil, isSM: Int64? = nil, filterExpiring: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCertificatesResponse> {
        self.describeCertificates(.init(offset: offset, limit: limit, searchKey: searchKey, certificateType: certificateType, projectId: projectId, expirationSort: expirationSort, certificateStatus: certificateStatus, deployable: deployable, upload: upload, renew: renew, filterSource: filterSource, isSM: isSM, filterExpiring: filterExpiring), region: region, logger: logger, on: eventLoop)
    }

    /// 获取证书列表
    ///
    /// 本接口（DescribeCertificates）用于获取证书列表。
    @inlinable
    public func describeCertificates(offset: UInt64? = nil, limit: UInt64? = nil, searchKey: String? = nil, certificateType: String? = nil, projectId: UInt64? = nil, expirationSort: String? = nil, certificateStatus: [UInt64]? = nil, deployable: UInt64? = nil, upload: Int64? = nil, renew: Int64? = nil, filterSource: String? = nil, isSM: Int64? = nil, filterExpiring: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCertificatesResponse {
        try await self.describeCertificates(.init(offset: offset, limit: limit, searchKey: searchKey, certificateType: certificateType, projectId: projectId, expirationSort: expirationSort, certificateStatus: certificateStatus, deployable: deployable, upload: upload, renew: renew, filterSource: filterSource, isSM: isSM, filterExpiring: filterExpiring), region: region, logger: logger, on: eventLoop)
    }

    /// 获取证书列表
    ///
    /// 本接口（DescribeCertificates）用于获取证书列表。
    @inlinable
    public func describeCertificatesPaginated(_ input: DescribeCertificatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Certificates])> {
        self.client.paginate(input: input, region: region, command: self.describeCertificates, logger: logger, on: eventLoop)
    }

    /// 获取证书列表
    ///
    /// 本接口（DescribeCertificates）用于获取证书列表。
    @inlinable @discardableResult
    public func describeCertificatesPaginated(_ input: DescribeCertificatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCertificatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCertificates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取证书列表
    ///
    /// 本接口（DescribeCertificates）用于获取证书列表。
    ///
    /// - Returns: `AsyncSequence`s of ``Certificates`` and ``DescribeCertificatesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCertificatesPaginator(_ input: DescribeCertificatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCertificatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCertificates, logger: logger, on: eventLoop)
    }
}
