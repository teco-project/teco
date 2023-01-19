//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Antiddos {
    /// DescribeCCLevelList请求参数结构体
    public struct DescribeCCLevelListRequest: TCRequestModel {
        /// 大禹子产品代号（bgp-multip表示高防包）
        public let business: String

        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64

        /// 一页条数
        public let limit: UInt64

        /// 指定实例Id
        public let instanceId: String?

        public init(business: String, offset: UInt64, limit: UInt64, instanceId: String? = nil) {
            self.business = business
            self.offset = offset
            self.limit = limit
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case offset = "Offset"
            case limit = "Limit"
            case instanceId = "InstanceId"
        }
    }

    /// DescribeCCLevelList返回参数结构体
    public struct DescribeCCLevelListResponse: TCResponseModel {
        /// 分级策略列表总数
        public let total: UInt64

        /// 分级策略列表总数
        public let levelList: [CCLevelPolicy]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case levelList = "LevelList"
            case requestId = "RequestId"
        }
    }

    /// 获取CC防护等级列表
    ///
    /// 获取边界防护CC防护等级列表
    @inlinable
    public func describeCCLevelList(_ input: DescribeCCLevelListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCCLevelListResponse> {
        self.client.execute(action: "DescribeCCLevelList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取CC防护等级列表
    ///
    /// 获取边界防护CC防护等级列表
    @inlinable
    public func describeCCLevelList(_ input: DescribeCCLevelListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCLevelListResponse {
        try await self.client.execute(action: "DescribeCCLevelList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取CC防护等级列表
    ///
    /// 获取边界防护CC防护等级列表
    @inlinable
    public func describeCCLevelList(business: String, offset: UInt64, limit: UInt64, instanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCCLevelListResponse> {
        self.describeCCLevelList(DescribeCCLevelListRequest(business: business, offset: offset, limit: limit, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取CC防护等级列表
    ///
    /// 获取边界防护CC防护等级列表
    @inlinable
    public func describeCCLevelList(business: String, offset: UInt64, limit: UInt64, instanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCLevelListResponse {
        try await self.describeCCLevelList(DescribeCCLevelListRequest(business: business, offset: offset, limit: limit, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
