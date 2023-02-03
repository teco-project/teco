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

extension Mariadb {
    /// CloseDBExtranetAccess请求参数结构体
    public struct CloseDBExtranetAccessRequest: TCRequestModel {
        /// 待关闭外网访问的实例ID。形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
        public let instanceId: String

        /// 是否IPv6，默认0
        public let ipv6Flag: Int64?

        public init(instanceId: String, ipv6Flag: Int64? = nil) {
            self.instanceId = instanceId
            self.ipv6Flag = ipv6Flag
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case ipv6Flag = "Ipv6Flag"
        }
    }

    /// CloseDBExtranetAccess返回参数结构体
    public struct CloseDBExtranetAccessResponse: TCResponseModel {
        /// 异步任务ID，可通过 DescribeFlow 查询任务状态。
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 关闭外网访问
    ///
    /// 本接口(CloseDBExtranetAccess)用于关闭云数据库实例的外网访问。关闭外网访问后，外网地址将不可访问，查询实例列表接口将不返回对应实例的外网域名和端口信息。
    @inlinable
    public func closeDBExtranetAccess(_ input: CloseDBExtranetAccessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloseDBExtranetAccessResponse> {
        self.client.execute(action: "CloseDBExtranetAccess", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 关闭外网访问
    ///
    /// 本接口(CloseDBExtranetAccess)用于关闭云数据库实例的外网访问。关闭外网访问后，外网地址将不可访问，查询实例列表接口将不返回对应实例的外网域名和端口信息。
    @inlinable
    public func closeDBExtranetAccess(_ input: CloseDBExtranetAccessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloseDBExtranetAccessResponse {
        try await self.client.execute(action: "CloseDBExtranetAccess", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 关闭外网访问
    ///
    /// 本接口(CloseDBExtranetAccess)用于关闭云数据库实例的外网访问。关闭外网访问后，外网地址将不可访问，查询实例列表接口将不返回对应实例的外网域名和端口信息。
    @inlinable
    public func closeDBExtranetAccess(instanceId: String, ipv6Flag: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloseDBExtranetAccessResponse> {
        let input = CloseDBExtranetAccessRequest(instanceId: instanceId, ipv6Flag: ipv6Flag)
        return self.client.execute(action: "CloseDBExtranetAccess", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 关闭外网访问
    ///
    /// 本接口(CloseDBExtranetAccess)用于关闭云数据库实例的外网访问。关闭外网访问后，外网地址将不可访问，查询实例列表接口将不返回对应实例的外网域名和端口信息。
    @inlinable
    public func closeDBExtranetAccess(instanceId: String, ipv6Flag: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloseDBExtranetAccessResponse {
        let input = CloseDBExtranetAccessRequest(instanceId: instanceId, ipv6Flag: ipv6Flag)
        return try await self.client.execute(action: "CloseDBExtranetAccess", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
