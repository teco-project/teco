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

extension Teo {
    /// DescribeHostsSetting请求参数结构体
    public struct DescribeHostsSettingRequest: TCRequestModel {
        /// 站点ID
        public let zoneId: String

        /// 分页查询偏移量，默认为 0
        public let offset: Int64?

        /// 分页查询限制数目，默认为 100，最大可设置为 1000
        public let limit: Int64?

        /// 指定域名查询
        public let hosts: [String]?

        public init(zoneId: String, offset: Int64? = nil, limit: Int64? = nil, hosts: [String]? = nil) {
            self.zoneId = zoneId
            self.offset = offset
            self.limit = limit
            self.hosts = hosts
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case offset = "Offset"
            case limit = "Limit"
            case hosts = "Hosts"
        }
    }

    /// DescribeHostsSetting返回参数结构体
    public struct DescribeHostsSettingResponse: TCResponseModel {
        /// 域名列表
        public let hosts: [DetailHost]

        /// 域名数量
        public let totalNumber: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case hosts = "Hosts"
            case totalNumber = "TotalNumber"
            case requestId = "RequestId"
        }
    }

    /// 查询域名详细配置
    ///
    /// 用于查询域名配置信息
    @inlinable
    public func describeHostsSetting(_ input: DescribeHostsSettingRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeHostsSettingResponse > {
        self.client.execute(action: "DescribeHostsSetting", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询域名详细配置
    ///
    /// 用于查询域名配置信息
    @inlinable
    public func describeHostsSetting(_ input: DescribeHostsSettingRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostsSettingResponse {
        try await self.client.execute(action: "DescribeHostsSetting", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询域名详细配置
    ///
    /// 用于查询域名配置信息
    @inlinable
    public func describeHostsSetting(zoneId: String, offset: Int64? = nil, limit: Int64? = nil, hosts: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeHostsSettingResponse > {
        self.describeHostsSetting(DescribeHostsSettingRequest(zoneId: zoneId, offset: offset, limit: limit, hosts: hosts), logger: logger, on: eventLoop)
    }

    /// 查询域名详细配置
    ///
    /// 用于查询域名配置信息
    @inlinable
    public func describeHostsSetting(zoneId: String, offset: Int64? = nil, limit: Int64? = nil, hosts: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostsSettingResponse {
        try await self.describeHostsSetting(DescribeHostsSettingRequest(zoneId: zoneId, offset: offset, limit: limit, hosts: hosts), logger: logger, on: eventLoop)
    }
}
