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
    /// OpenDBExtranetAccess请求参数结构体
    public struct OpenDBExtranetAccessRequest: TCRequestModel {
        /// 待开放外网访问的实例ID。形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
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

    /// OpenDBExtranetAccess返回参数结构体
    public struct OpenDBExtranetAccessResponse: TCResponseModel {
        /// 异步任务ID，可通过 DescribeFlow 查询任务状态。
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 开通外网访问
    ///
    /// 本接口（OpenDBExtranetAccess）用于开通云数据库实例的外网访问。开通外网访问后，您可通过外网域名和端口访问实例，可使用查询实例列表接口获取外网域名和端口信息。
    @inlinable
    public func openDBExtranetAccess(_ input: OpenDBExtranetAccessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenDBExtranetAccessResponse> {
        self.client.execute(action: "OpenDBExtranetAccess", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开通外网访问
    ///
    /// 本接口（OpenDBExtranetAccess）用于开通云数据库实例的外网访问。开通外网访问后，您可通过外网域名和端口访问实例，可使用查询实例列表接口获取外网域名和端口信息。
    @inlinable
    public func openDBExtranetAccess(_ input: OpenDBExtranetAccessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenDBExtranetAccessResponse {
        try await self.client.execute(action: "OpenDBExtranetAccess", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开通外网访问
    ///
    /// 本接口（OpenDBExtranetAccess）用于开通云数据库实例的外网访问。开通外网访问后，您可通过外网域名和端口访问实例，可使用查询实例列表接口获取外网域名和端口信息。
    @inlinable
    public func openDBExtranetAccess(instanceId: String, ipv6Flag: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenDBExtranetAccessResponse> {
        self.openDBExtranetAccess(.init(instanceId: instanceId, ipv6Flag: ipv6Flag), region: region, logger: logger, on: eventLoop)
    }

    /// 开通外网访问
    ///
    /// 本接口（OpenDBExtranetAccess）用于开通云数据库实例的外网访问。开通外网访问后，您可通过外网域名和端口访问实例，可使用查询实例列表接口获取外网域名和端口信息。
    @inlinable
    public func openDBExtranetAccess(instanceId: String, ipv6Flag: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenDBExtranetAccessResponse {
        try await self.openDBExtranetAccess(.init(instanceId: instanceId, ipv6Flag: ipv6Flag), region: region, logger: logger, on: eventLoop)
    }
}
