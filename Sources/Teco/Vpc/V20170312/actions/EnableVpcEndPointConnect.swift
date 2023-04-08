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

extension Vpc {
    /// EnableVpcEndPointConnect请求参数结构体
    public struct EnableVpcEndPointConnectRequest: TCRequestModel {
        /// 终端节点服务ID。
        public let endPointServiceId: String

        /// 终端节点ID。
        public let endPointId: [String]

        /// 是否接受终端节点连接请求。
        public let acceptFlag: Bool

        public init(endPointServiceId: String, endPointId: [String], acceptFlag: Bool) {
            self.endPointServiceId = endPointServiceId
            self.endPointId = endPointId
            self.acceptFlag = acceptFlag
        }

        enum CodingKeys: String, CodingKey {
            case endPointServiceId = "EndPointServiceId"
            case endPointId = "EndPointId"
            case acceptFlag = "AcceptFlag"
        }
    }

    /// EnableVpcEndPointConnect返回参数结构体
    public struct EnableVpcEndPointConnectResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 是否接受终端节点连接请求
    ///
    /// 是否接受终端节点连接请求。
    @inlinable @discardableResult
    public func enableVpcEndPointConnect(_ input: EnableVpcEndPointConnectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableVpcEndPointConnectResponse> {
        self.client.execute(action: "EnableVpcEndPointConnect", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 是否接受终端节点连接请求
    ///
    /// 是否接受终端节点连接请求。
    @inlinable @discardableResult
    public func enableVpcEndPointConnect(_ input: EnableVpcEndPointConnectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableVpcEndPointConnectResponse {
        try await self.client.execute(action: "EnableVpcEndPointConnect", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 是否接受终端节点连接请求
    ///
    /// 是否接受终端节点连接请求。
    @inlinable @discardableResult
    public func enableVpcEndPointConnect(endPointServiceId: String, endPointId: [String], acceptFlag: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableVpcEndPointConnectResponse> {
        self.enableVpcEndPointConnect(.init(endPointServiceId: endPointServiceId, endPointId: endPointId, acceptFlag: acceptFlag), region: region, logger: logger, on: eventLoop)
    }

    /// 是否接受终端节点连接请求
    ///
    /// 是否接受终端节点连接请求。
    @inlinable @discardableResult
    public func enableVpcEndPointConnect(endPointServiceId: String, endPointId: [String], acceptFlag: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableVpcEndPointConnectResponse {
        try await self.enableVpcEndPointConnect(.init(endPointServiceId: endPointServiceId, endPointId: endPointId, acceptFlag: acceptFlag), region: region, logger: logger, on: eventLoop)
    }
}
