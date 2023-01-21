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

extension Lighthouse {
    /// DescribeModifyInstanceBundles请求参数结构体
    public struct DescribeModifyInstanceBundlesRequest: TCRequestModel {
        /// 实例 ID。
        public let instanceId: String

        /// 过滤器列表。
        /// <li>bundle-id</li>按照【套餐 ID】进行过滤。
        /// 类型：String
        /// 必选：否
        /// <li>support-platform-type</li>按照【系统类型】进行过滤。
        /// 取值： LINUX_UNIX（Linux/Unix系统）；WINDOWS（Windows 系统）
        /// 类型：String
        /// 必选：否
        /// <li>bundle-type</li>按照 【套餐类型进行过滤】。
        /// 取值：GENERAL_BUNDLE (通用型套餐); STORAGE_BUNDLE(存储型套餐);ENTERPRISE_BUNDLE( 企业型套餐);EXCLUSIVE_BUNDLE(专属型套餐);BEFAST_BUNDLE(蜂驰型套餐);
        /// 类型：String
        /// 必选：否
        /// <li>bundle-state</li>按照【套餐状态】进行过滤。
        /// 取值: ‘ONLINE’(在线); ‘OFFLINE’(下线);
        /// 类型：String
        /// 必选：否
        /// 每次请求的 Filters 的上限为 10，Filter.Values 的上限为 5。
        public let filters: [Filter]?

        /// 偏移量，默认为 0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为 20，最大值为 100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        public let limit: Int64?

        public init(instanceId: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceId = instanceId
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeModifyInstanceBundles返回参数结构体
    public struct DescribeModifyInstanceBundlesResponse: TCResponseModel {
        /// 符合条件的套餐数量。
        public let totalCount: Int64

        /// 变更套餐详细信息。
        public let modifyBundleSet: [ModifyBundle]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case modifyBundleSet = "ModifyBundleSet"
            case requestId = "RequestId"
        }
    }

    /// 查询实例可变更套餐列表
    ///
    /// 本接口（DescribeModifyInstanceBundles）用于查询实例可变更套餐列表。
    @inlinable
    public func describeModifyInstanceBundles(_ input: DescribeModifyInstanceBundlesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModifyInstanceBundlesResponse> {
        self.client.execute(action: "DescribeModifyInstanceBundles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例可变更套餐列表
    ///
    /// 本接口（DescribeModifyInstanceBundles）用于查询实例可变更套餐列表。
    @inlinable
    public func describeModifyInstanceBundles(_ input: DescribeModifyInstanceBundlesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModifyInstanceBundlesResponse {
        try await self.client.execute(action: "DescribeModifyInstanceBundles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例可变更套餐列表
    ///
    /// 本接口（DescribeModifyInstanceBundles）用于查询实例可变更套餐列表。
    @inlinable
    public func describeModifyInstanceBundles(instanceId: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModifyInstanceBundlesResponse> {
        self.describeModifyInstanceBundles(DescribeModifyInstanceBundlesRequest(instanceId: instanceId, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例可变更套餐列表
    ///
    /// 本接口（DescribeModifyInstanceBundles）用于查询实例可变更套餐列表。
    @inlinable
    public func describeModifyInstanceBundles(instanceId: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModifyInstanceBundlesResponse {
        try await self.describeModifyInstanceBundles(DescribeModifyInstanceBundlesRequest(instanceId: instanceId, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
