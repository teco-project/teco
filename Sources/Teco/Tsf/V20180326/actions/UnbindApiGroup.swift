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

extension Tsf {
    /// UnbindApiGroup请求参数结构体
    public struct UnbindApiGroupRequest: TCRequestModel {
        /// 分组网关id列表
        public let groupGatewayList: [GatewayGroupIds]

        public init(groupGatewayList: [GatewayGroupIds]) {
            self.groupGatewayList = groupGatewayList
        }

        enum CodingKeys: String, CodingKey {
            case groupGatewayList = "GroupGatewayList"
        }
    }

    /// UnbindApiGroup返回参数结构体
    public struct UnbindApiGroupResponse: TCResponseModel {
        /// 返回结果，成功失败
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// API分组批量与网关解绑
    @inlinable
    public func unbindApiGroup(_ input: UnbindApiGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindApiGroupResponse> {
        self.client.execute(action: "UnbindApiGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// API分组批量与网关解绑
    @inlinable
    public func unbindApiGroup(_ input: UnbindApiGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindApiGroupResponse {
        try await self.client.execute(action: "UnbindApiGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// API分组批量与网关解绑
    @inlinable
    public func unbindApiGroup(groupGatewayList: [GatewayGroupIds], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindApiGroupResponse> {
        self.unbindApiGroup(.init(groupGatewayList: groupGatewayList), region: region, logger: logger, on: eventLoop)
    }

    /// API分组批量与网关解绑
    @inlinable
    public func unbindApiGroup(groupGatewayList: [GatewayGroupIds], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindApiGroupResponse {
        try await self.unbindApiGroup(.init(groupGatewayList: groupGatewayList), region: region, logger: logger, on: eventLoop)
    }
}
