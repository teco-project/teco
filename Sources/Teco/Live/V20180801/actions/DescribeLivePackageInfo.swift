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

import TecoPaginationHelpers

extension Live {
    /// DescribeLivePackageInfo请求参数结构体
    public struct DescribeLivePackageInfoRequest: TCPaginatedRequest {
        /// 包类型，可选值：
        /// 0：流量包
        /// 1：转码包
        /// 2: 连麦包。
        public let packageType: Int64

        /// 排序规则:
        /// 1. BuyTimeDesc： 最新购买的排在最前面
        /// 2. BuyTimeAsc： 最老购买的排在最前面
        /// 3. ExpireTimeDesc： 最后过期的排在最前面
        /// 4. ExpireTimeAsc：最先过期的排在最前面。
        ///
        /// 注意：
        /// 1. PackageType 为 2（连麦包） 的时候，不支持 3、4 排序。
        public let orderBy: String?

        /// 取得第几页的数据，和 PageSize 同时传递才会生效。
        public let pageNum: Int64?

        /// 分页大小，和 PageNum 同时传递才会生效。
        /// 取值：10 ～ 100 之间的任意整数。
        public let pageSize: Int64?

        public init(packageType: Int64, orderBy: String? = nil, pageNum: Int64? = nil, pageSize: Int64? = nil) {
            self.packageType = packageType
            self.orderBy = orderBy
            self.pageNum = pageNum
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case packageType = "PackageType"
            case orderBy = "OrderBy"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeLivePackageInfoResponse) -> DescribeLivePackageInfoRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeLivePackageInfoRequest(packageType: self.packageType, orderBy: self.orderBy, pageNum: (self.pageNum ?? 0) + 1, pageSize: self.pageSize)
        }
    }

    /// DescribeLivePackageInfo返回参数结构体
    public struct DescribeLivePackageInfoResponse: TCPaginatedResponse {
        /// 套餐包信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let livePackageInfoList: [LivePackageInfo]?

        /// 套餐包当前计费方式:
        /// -1: 无计费方式或获取失败
        /// 0: 无计费方式
        /// 201: 月结带宽
        /// 202: 月结流量
        /// 203: 日结带宽
        /// 204: 日结流量
        /// 205: 日结时长
        /// 206: 月结时长
        /// 304: 日结流量。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let packageBillMode: Int64?

        /// 总页数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalPage: Int64?

        /// 数据总条数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalNum: Int64?

        /// 当前页数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pageNum: Int64?

        /// 当前每页数量。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pageSize: Int64?

        /// 当请求参数 PackageType = 0 时生效，逗号分隔，从第一个到最后一个分别表示：
        /// 标准直播，中国大陆（境内全地区）计费方式。
        /// 标准直播，国际/港澳台（境外多地区）计费方式。
        /// 快直播，中国大陆（境内全地区）计费方式。
        /// 快直播，国际/港澳台（境外多地区）计费方式。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fluxPackageBillMode: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case livePackageInfoList = "LivePackageInfoList"
            case packageBillMode = "PackageBillMode"
            case totalPage = "TotalPage"
            case totalNum = "TotalNum"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case fluxPackageBillMode = "FluxPackageBillMode"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [LivePackageInfo] {
            self.livePackageInfoList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalNum
        }
    }

    /// 查询直播套餐包信息
    ///
    /// 查询用户套餐包总量、使用量、剩余量、包状态、购买时间和过期时间等。
    @inlinable
    public func describeLivePackageInfo(_ input: DescribeLivePackageInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLivePackageInfoResponse> {
        self.client.execute(action: "DescribeLivePackageInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询直播套餐包信息
    ///
    /// 查询用户套餐包总量、使用量、剩余量、包状态、购买时间和过期时间等。
    @inlinable
    public func describeLivePackageInfo(_ input: DescribeLivePackageInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLivePackageInfoResponse {
        try await self.client.execute(action: "DescribeLivePackageInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询直播套餐包信息
    ///
    /// 查询用户套餐包总量、使用量、剩余量、包状态、购买时间和过期时间等。
    @inlinable
    public func describeLivePackageInfo(packageType: Int64, orderBy: String? = nil, pageNum: Int64? = nil, pageSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLivePackageInfoResponse> {
        let input = DescribeLivePackageInfoRequest(packageType: packageType, orderBy: orderBy, pageNum: pageNum, pageSize: pageSize)
        return self.client.execute(action: "DescribeLivePackageInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询直播套餐包信息
    ///
    /// 查询用户套餐包总量、使用量、剩余量、包状态、购买时间和过期时间等。
    @inlinable
    public func describeLivePackageInfo(packageType: Int64, orderBy: String? = nil, pageNum: Int64? = nil, pageSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLivePackageInfoResponse {
        let input = DescribeLivePackageInfoRequest(packageType: packageType, orderBy: orderBy, pageNum: pageNum, pageSize: pageSize)
        return try await self.client.execute(action: "DescribeLivePackageInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询直播套餐包信息
    ///
    /// 查询用户套餐包总量、使用量、剩余量、包状态、购买时间和过期时间等。
    @inlinable
    public func describeLivePackageInfoPaginated(_ input: DescribeLivePackageInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [LivePackageInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeLivePackageInfo, logger: logger, on: eventLoop)
    }

    /// 查询直播套餐包信息
    ///
    /// 查询用户套餐包总量、使用量、剩余量、包状态、购买时间和过期时间等。
    @inlinable
    public func describeLivePackageInfoPaginated(_ input: DescribeLivePackageInfoRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLivePackageInfoResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLivePackageInfo, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询直播套餐包信息
    ///
    /// 查询用户套餐包总量、使用量、剩余量、包状态、购买时间和过期时间等。
    @inlinable
    public func describeLivePackageInfoPaginator(_ input: DescribeLivePackageInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeLivePackageInfoRequest, DescribeLivePackageInfoResponse>.ResultSequence, responses: TCClient.Paginator<DescribeLivePackageInfoRequest, DescribeLivePackageInfoResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeLivePackageInfoRequest, DescribeLivePackageInfoResponse>.ResultSequence(input: input, region: region, command: self.describeLivePackageInfo, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeLivePackageInfoRequest, DescribeLivePackageInfoResponse>.ResponseSequence(input: input, region: region, command: self.describeLivePackageInfo, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
