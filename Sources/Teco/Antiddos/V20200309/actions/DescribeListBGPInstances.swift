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

extension Antiddos {
    /// DescribeListBGPInstances请求参数结构体
    public struct DescribeListBGPInstancesRequest: TCPaginatedRequest {
        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64

        /// 一页条数，当Limit=0时，默认一页条数为20;最大取值为100
        public let limit: UInt64

        /// IP搜索
        public let filterIp: String?

        /// 资产实例ID搜索，例如，bgp-00000001
        public let filterInstanceId: String?

        /// 地域搜索，例如，ap-guangzhou
        public let filterRegion: String?

        /// 名称搜索
        public let filterName: String?

        /// 按照线路搜索, 1: BGP; 2: 三网
        public let filterLine: UInt64?

        /// 状态搜索，idle：运行中；attacking：攻击中；blocking：封堵中
        public let filterStatus: String?

        /// 高防包绑定状态搜索，bounding：绑定中； failed：绑定失败
        public let filterBoundStatus: String?

        /// 实例id数组
        public let filterInstanceIdList: [String]?

        /// 企业版搜索,  1：包含重保护航套餐下的企业版列表, 2: 不包含重保护航套餐的企业版列表
        public let filterEnterpriseFlag: UInt64?

        /// 轻量版搜索
        public let filterLightFlag: UInt64?

        /// 定制版搜索
        public let filterChannelFlag: UInt64?

        /// 标签搜索
        public let filterTag: TagFilter?

        /// 试用资源搜索，1: 应急防护资源；2：PLG试用资源
        public let filterTrialFlag: UInt64?

        /// 重保护航搜索
        public let filterConvoy: UInt64?

        /// 默认false；接口传true，返回数据中不包含高级信息，高级信息包含：InstanceList[0].Usage。
        public let excludeAdvancedInfo: Bool?

        public init(offset: UInt64, limit: UInt64, filterIp: String? = nil, filterInstanceId: String? = nil, filterRegion: String? = nil, filterName: String? = nil, filterLine: UInt64? = nil, filterStatus: String? = nil, filterBoundStatus: String? = nil, filterInstanceIdList: [String]? = nil, filterEnterpriseFlag: UInt64? = nil, filterLightFlag: UInt64? = nil, filterChannelFlag: UInt64? = nil, filterTag: TagFilter? = nil, filterTrialFlag: UInt64? = nil, filterConvoy: UInt64? = nil, excludeAdvancedInfo: Bool? = nil) {
            self.offset = offset
            self.limit = limit
            self.filterIp = filterIp
            self.filterInstanceId = filterInstanceId
            self.filterRegion = filterRegion
            self.filterName = filterName
            self.filterLine = filterLine
            self.filterStatus = filterStatus
            self.filterBoundStatus = filterBoundStatus
            self.filterInstanceIdList = filterInstanceIdList
            self.filterEnterpriseFlag = filterEnterpriseFlag
            self.filterLightFlag = filterLightFlag
            self.filterChannelFlag = filterChannelFlag
            self.filterTag = filterTag
            self.filterTrialFlag = filterTrialFlag
            self.filterConvoy = filterConvoy
            self.excludeAdvancedInfo = excludeAdvancedInfo
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filterIp = "FilterIp"
            case filterInstanceId = "FilterInstanceId"
            case filterRegion = "FilterRegion"
            case filterName = "FilterName"
            case filterLine = "FilterLine"
            case filterStatus = "FilterStatus"
            case filterBoundStatus = "FilterBoundStatus"
            case filterInstanceIdList = "FilterInstanceIdList"
            case filterEnterpriseFlag = "FilterEnterpriseFlag"
            case filterLightFlag = "FilterLightFlag"
            case filterChannelFlag = "FilterChannelFlag"
            case filterTag = "FilterTag"
            case filterTrialFlag = "FilterTrialFlag"
            case filterConvoy = "FilterConvoy"
            case excludeAdvancedInfo = "ExcludeAdvancedInfo"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeListBGPInstancesResponse) -> DescribeListBGPInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeListBGPInstancesRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, filterIp: self.filterIp, filterInstanceId: self.filterInstanceId, filterRegion: self.filterRegion, filterName: self.filterName, filterLine: self.filterLine, filterStatus: self.filterStatus, filterBoundStatus: self.filterBoundStatus, filterInstanceIdList: self.filterInstanceIdList, filterEnterpriseFlag: self.filterEnterpriseFlag, filterLightFlag: self.filterLightFlag, filterChannelFlag: self.filterChannelFlag, filterTag: self.filterTag, filterTrialFlag: self.filterTrialFlag, filterConvoy: self.filterConvoy, excludeAdvancedInfo: self.excludeAdvancedInfo)
        }
    }

    /// DescribeListBGPInstances返回参数结构体
    public struct DescribeListBGPInstancesResponse: TCPaginatedResponse {
        /// 总数
        public let total: UInt64

        /// 高防包资产实例列表
        public let instanceList: [BGPInstance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case instanceList = "InstanceList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BGPInstance] {
            self.instanceList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取高防包资产实例列表
    @inlinable
    public func describeListBGPInstances(_ input: DescribeListBGPInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListBGPInstancesResponse> {
        self.client.execute(action: "DescribeListBGPInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取高防包资产实例列表
    @inlinable
    public func describeListBGPInstances(_ input: DescribeListBGPInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListBGPInstancesResponse {
        try await self.client.execute(action: "DescribeListBGPInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取高防包资产实例列表
    @inlinable
    public func describeListBGPInstances(offset: UInt64, limit: UInt64, filterIp: String? = nil, filterInstanceId: String? = nil, filterRegion: String? = nil, filterName: String? = nil, filterLine: UInt64? = nil, filterStatus: String? = nil, filterBoundStatus: String? = nil, filterInstanceIdList: [String]? = nil, filterEnterpriseFlag: UInt64? = nil, filterLightFlag: UInt64? = nil, filterChannelFlag: UInt64? = nil, filterTag: TagFilter? = nil, filterTrialFlag: UInt64? = nil, filterConvoy: UInt64? = nil, excludeAdvancedInfo: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListBGPInstancesResponse> {
        let input = DescribeListBGPInstancesRequest(offset: offset, limit: limit, filterIp: filterIp, filterInstanceId: filterInstanceId, filterRegion: filterRegion, filterName: filterName, filterLine: filterLine, filterStatus: filterStatus, filterBoundStatus: filterBoundStatus, filterInstanceIdList: filterInstanceIdList, filterEnterpriseFlag: filterEnterpriseFlag, filterLightFlag: filterLightFlag, filterChannelFlag: filterChannelFlag, filterTag: filterTag, filterTrialFlag: filterTrialFlag, filterConvoy: filterConvoy, excludeAdvancedInfo: excludeAdvancedInfo)
        return self.client.execute(action: "DescribeListBGPInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取高防包资产实例列表
    @inlinable
    public func describeListBGPInstances(offset: UInt64, limit: UInt64, filterIp: String? = nil, filterInstanceId: String? = nil, filterRegion: String? = nil, filterName: String? = nil, filterLine: UInt64? = nil, filterStatus: String? = nil, filterBoundStatus: String? = nil, filterInstanceIdList: [String]? = nil, filterEnterpriseFlag: UInt64? = nil, filterLightFlag: UInt64? = nil, filterChannelFlag: UInt64? = nil, filterTag: TagFilter? = nil, filterTrialFlag: UInt64? = nil, filterConvoy: UInt64? = nil, excludeAdvancedInfo: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListBGPInstancesResponse {
        let input = DescribeListBGPInstancesRequest(offset: offset, limit: limit, filterIp: filterIp, filterInstanceId: filterInstanceId, filterRegion: filterRegion, filterName: filterName, filterLine: filterLine, filterStatus: filterStatus, filterBoundStatus: filterBoundStatus, filterInstanceIdList: filterInstanceIdList, filterEnterpriseFlag: filterEnterpriseFlag, filterLightFlag: filterLightFlag, filterChannelFlag: filterChannelFlag, filterTag: filterTag, filterTrialFlag: filterTrialFlag, filterConvoy: filterConvoy, excludeAdvancedInfo: excludeAdvancedInfo)
        return try await self.client.execute(action: "DescribeListBGPInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取高防包资产实例列表
    @inlinable
    public func describeListBGPInstancesPaginated(_ input: DescribeListBGPInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [BGPInstance])> {
        self.client.paginate(input: input, region: region, command: self.describeListBGPInstances, logger: logger, on: eventLoop)
    }

    /// 获取高防包资产实例列表
    @inlinable @discardableResult
    public func describeListBGPInstancesPaginated(_ input: DescribeListBGPInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeListBGPInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeListBGPInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取高防包资产实例列表
    @inlinable
    public func describeListBGPInstancesPaginator(_ input: DescribeListBGPInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeListBGPInstancesRequest, DescribeListBGPInstancesResponse>.ResultSequence, responses: TCClient.Paginator<DescribeListBGPInstancesRequest, DescribeListBGPInstancesResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeListBGPInstances, logger: logger, on: eventLoop)
    }
}
