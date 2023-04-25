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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Antiddos {
    /// CreateBlackWhiteIpList请求参数结构体
    public struct CreateBlackWhiteIpListRequest: TCRequestModel {
        /// 资源实例ID
        public let instanceId: String

        /// IP列表
        public let ipList: [String]

        /// IP类型，取值[black(黑名单IP), white(白名单IP)]
        public let type: String

        public init(instanceId: String, ipList: [String], type: String) {
            self.instanceId = instanceId
            self.ipList = ipList
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case ipList = "IpList"
            case type = "Type"
        }
    }

    /// CreateBlackWhiteIpList返回参数结构体
    public struct CreateBlackWhiteIpListResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 添加DDoS防护的IP黑白名单
    @inlinable @discardableResult
    public func createBlackWhiteIpList(_ input: CreateBlackWhiteIpListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBlackWhiteIpListResponse> {
        self.client.execute(action: "CreateBlackWhiteIpList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加DDoS防护的IP黑白名单
    @inlinable @discardableResult
    public func createBlackWhiteIpList(_ input: CreateBlackWhiteIpListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBlackWhiteIpListResponse {
        try await self.client.execute(action: "CreateBlackWhiteIpList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加DDoS防护的IP黑白名单
    @inlinable @discardableResult
    public func createBlackWhiteIpList(instanceId: String, ipList: [String], type: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBlackWhiteIpListResponse> {
        self.createBlackWhiteIpList(.init(instanceId: instanceId, ipList: ipList, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 添加DDoS防护的IP黑白名单
    @inlinable @discardableResult
    public func createBlackWhiteIpList(instanceId: String, ipList: [String], type: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBlackWhiteIpListResponse {
        try await self.createBlackWhiteIpList(.init(instanceId: instanceId, ipList: ipList, type: type), region: region, logger: logger, on: eventLoop)
    }
}
