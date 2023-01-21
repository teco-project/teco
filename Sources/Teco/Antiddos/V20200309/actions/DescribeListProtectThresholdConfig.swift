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

extension Antiddos {
    /// DescribeListProtectThresholdConfig请求参数结构体
    public struct DescribeListProtectThresholdConfigRequest: TCRequestModel {
        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64

        /// 一页条数，当Limit=0时，默认一页条数为100;最大取值为100
        public let limit: UInt64

        /// 资源实例ID搜索, 支持资源实例前缀通配搜索，例如bgp-*表示获取高防包类型的资源实例
        public let filterInstanceId: String

        /// IP搜索
        public let filterIp: String?

        /// 域名搜索(查询域名与协议的CC防护阈值时使用）
        public let filterDomain: String?

        /// 协议搜索(查询域名与协议的CC防护阈值时使用）
        public let filterProtocol: String?

        public init(offset: UInt64, limit: UInt64, filterInstanceId: String, filterIp: String? = nil, filterDomain: String? = nil, filterProtocol: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.filterInstanceId = filterInstanceId
            self.filterIp = filterIp
            self.filterDomain = filterDomain
            self.filterProtocol = filterProtocol
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filterInstanceId = "FilterInstanceId"
            case filterIp = "FilterIp"
            case filterDomain = "FilterDomain"
            case filterProtocol = "FilterProtocol"
        }
    }

    /// DescribeListProtectThresholdConfig返回参数结构体
    public struct DescribeListProtectThresholdConfigResponse: TCResponseModel {
        /// 总记录数
        public let total: UInt64

        /// 防护阈值配置列表
        public let configList: [ProtectThresholdRelation]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case configList = "ConfigList"
            case requestId = "RequestId"
        }
    }

    /// 获取防护阈值配置列表
    ///
    /// 获取防护阈值配置列表，包括DDoS的AI、等级、CC阈值开关等
    @inlinable
    public func describeListProtectThresholdConfig(_ input: DescribeListProtectThresholdConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListProtectThresholdConfigResponse> {
        self.client.execute(action: "DescribeListProtectThresholdConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取防护阈值配置列表
    ///
    /// 获取防护阈值配置列表，包括DDoS的AI、等级、CC阈值开关等
    @inlinable
    public func describeListProtectThresholdConfig(_ input: DescribeListProtectThresholdConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListProtectThresholdConfigResponse {
        try await self.client.execute(action: "DescribeListProtectThresholdConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取防护阈值配置列表
    ///
    /// 获取防护阈值配置列表，包括DDoS的AI、等级、CC阈值开关等
    @inlinable
    public func describeListProtectThresholdConfig(offset: UInt64, limit: UInt64, filterInstanceId: String, filterIp: String? = nil, filterDomain: String? = nil, filterProtocol: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListProtectThresholdConfigResponse> {
        self.describeListProtectThresholdConfig(DescribeListProtectThresholdConfigRequest(offset: offset, limit: limit, filterInstanceId: filterInstanceId, filterIp: filterIp, filterDomain: filterDomain, filterProtocol: filterProtocol), region: region, logger: logger, on: eventLoop)
    }

    /// 获取防护阈值配置列表
    ///
    /// 获取防护阈值配置列表，包括DDoS的AI、等级、CC阈值开关等
    @inlinable
    public func describeListProtectThresholdConfig(offset: UInt64, limit: UInt64, filterInstanceId: String, filterIp: String? = nil, filterDomain: String? = nil, filterProtocol: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListProtectThresholdConfigResponse {
        try await self.describeListProtectThresholdConfig(DescribeListProtectThresholdConfigRequest(offset: offset, limit: limit, filterInstanceId: filterInstanceId, filterIp: filterIp, filterDomain: filterDomain, filterProtocol: filterProtocol), region: region, logger: logger, on: eventLoop)
    }
}
