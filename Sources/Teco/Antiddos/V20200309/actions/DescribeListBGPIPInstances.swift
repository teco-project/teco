//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Antiddos {
    /// DescribeListBGPIPInstances请求参数结构体
    public struct DescribeListBGPIPInstancesRequest: TCRequestModel {
        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64

        /// 一页条数，当Limit=0时，默认一页条数为20;最大取值为100
        public let limit: UInt64

        /// IP搜索
        public let filterIp: String?

        /// 资产实例ID搜索，例如，bgpip-00000001
        public let filterInstanceId: String?

        /// 高防IP线路搜索，取值为[
        /// 1：BGP线路
        /// 2：电信
        /// 3：联通
        /// 4：移动
        /// 99：第三方合作线路
        /// ]
        public let filterLine: UInt64?

        /// 地域搜索，例如，ap-guangzhou
        public let filterRegion: String?

        /// 名称搜索
        public let filterName: String?

        /// 是否只获取高防弹性公网IP实例。填写时，只能填写1或者0。当填写1时，表示返回高防弹性公网IP实例。当填写0时，表示返回非高防弹性公网IP实例。
        public let filterEipType: Int64?

        /// 高防弹性公网IP实例的绑定状态搜索条件，取值范围 [BINDING、 BIND、UNBINDING、UNBIND]。该搜索条件只在FilterEipType=1时才有效。
        public let filterEipEipAddressStatus: [String]?

        /// 是否只获取安全加速实例。填写时，只能填写1或者0。当填写1时，表示返回安全加速实例。当填写0时，表示返回非安全加速实例。
        public let filterDamDDoSStatus: Int64?

        /// 获取特定状态的资源，运行中填idle，攻击中填attacking，封堵中填blocking
        public let filterStatus: String?

        /// 获取特定的实例Cname
        public let filterCname: String?

        /// 批量查询实例ID对应的高防IP实例资源
        public let filterInstanceIdList: [String]?

        /// 标签搜索
        public let filterTag: TagFilter?

        /// 按照套餐类型进行过滤
        public let filterPackType: [String]?

        public init(offset: UInt64, limit: UInt64, filterIp: String? = nil, filterInstanceId: String? = nil, filterLine: UInt64? = nil, filterRegion: String? = nil, filterName: String? = nil, filterEipType: Int64? = nil, filterEipEipAddressStatus: [String]? = nil, filterDamDDoSStatus: Int64? = nil, filterStatus: String? = nil, filterCname: String? = nil, filterInstanceIdList: [String]? = nil, filterTag: TagFilter? = nil, filterPackType: [String]? = nil) {
            self.offset = offset
            self.limit = limit
            self.filterIp = filterIp
            self.filterInstanceId = filterInstanceId
            self.filterLine = filterLine
            self.filterRegion = filterRegion
            self.filterName = filterName
            self.filterEipType = filterEipType
            self.filterEipEipAddressStatus = filterEipEipAddressStatus
            self.filterDamDDoSStatus = filterDamDDoSStatus
            self.filterStatus = filterStatus
            self.filterCname = filterCname
            self.filterInstanceIdList = filterInstanceIdList
            self.filterTag = filterTag
            self.filterPackType = filterPackType
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filterIp = "FilterIp"
            case filterInstanceId = "FilterInstanceId"
            case filterLine = "FilterLine"
            case filterRegion = "FilterRegion"
            case filterName = "FilterName"
            case filterEipType = "FilterEipType"
            case filterEipEipAddressStatus = "FilterEipEipAddressStatus"
            case filterDamDDoSStatus = "FilterDamDDoSStatus"
            case filterStatus = "FilterStatus"
            case filterCname = "FilterCname"
            case filterInstanceIdList = "FilterInstanceIdList"
            case filterTag = "FilterTag"
            case filterPackType = "FilterPackType"
        }
    }

    /// DescribeListBGPIPInstances返回参数结构体
    public struct DescribeListBGPIPInstancesResponse: TCResponseModel {
        /// 总数
        public let total: UInt64

        /// 高防IP资产实例列表
        public let instanceList: [BGPIPInstance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case instanceList = "InstanceList"
            case requestId = "RequestId"
        }
    }

    /// 获取高防IP资产实例列表
    @inlinable
    public func describeListBGPIPInstances(_ input: DescribeListBGPIPInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeListBGPIPInstancesResponse > {
        self.client.execute(action: "DescribeListBGPIPInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取高防IP资产实例列表
    @inlinable
    public func describeListBGPIPInstances(_ input: DescribeListBGPIPInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListBGPIPInstancesResponse {
        try await self.client.execute(action: "DescribeListBGPIPInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取高防IP资产实例列表
    @inlinable
    public func describeListBGPIPInstances(offset: UInt64, limit: UInt64, filterIp: String? = nil, filterInstanceId: String? = nil, filterLine: UInt64? = nil, filterRegion: String? = nil, filterName: String? = nil, filterEipType: Int64? = nil, filterEipEipAddressStatus: [String]? = nil, filterDamDDoSStatus: Int64? = nil, filterStatus: String? = nil, filterCname: String? = nil, filterInstanceIdList: [String]? = nil, filterTag: TagFilter? = nil, filterPackType: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeListBGPIPInstancesResponse > {
        self.describeListBGPIPInstances(DescribeListBGPIPInstancesRequest(offset: offset, limit: limit, filterIp: filterIp, filterInstanceId: filterInstanceId, filterLine: filterLine, filterRegion: filterRegion, filterName: filterName, filterEipType: filterEipType, filterEipEipAddressStatus: filterEipEipAddressStatus, filterDamDDoSStatus: filterDamDDoSStatus, filterStatus: filterStatus, filterCname: filterCname, filterInstanceIdList: filterInstanceIdList, filterTag: filterTag, filterPackType: filterPackType), logger: logger, on: eventLoop)
    }

    /// 获取高防IP资产实例列表
    @inlinable
    public func describeListBGPIPInstances(offset: UInt64, limit: UInt64, filterIp: String? = nil, filterInstanceId: String? = nil, filterLine: UInt64? = nil, filterRegion: String? = nil, filterName: String? = nil, filterEipType: Int64? = nil, filterEipEipAddressStatus: [String]? = nil, filterDamDDoSStatus: Int64? = nil, filterStatus: String? = nil, filterCname: String? = nil, filterInstanceIdList: [String]? = nil, filterTag: TagFilter? = nil, filterPackType: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListBGPIPInstancesResponse {
        try await self.describeListBGPIPInstances(DescribeListBGPIPInstancesRequest(offset: offset, limit: limit, filterIp: filterIp, filterInstanceId: filterInstanceId, filterLine: filterLine, filterRegion: filterRegion, filterName: filterName, filterEipType: filterEipType, filterEipEipAddressStatus: filterEipEipAddressStatus, filterDamDDoSStatus: filterDamDDoSStatus, filterStatus: filterStatus, filterCname: filterCname, filterInstanceIdList: filterInstanceIdList, filterTag: filterTag, filterPackType: filterPackType), logger: logger, on: eventLoop)
    }
}
