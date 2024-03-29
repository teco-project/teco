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

import Logging
import NIOCore
import TecoCore

extension Vpc {
    /// DeleteDirectConnectGateway请求参数结构体
    public struct DeleteDirectConnectGatewayRequest: TCRequest {
        /// 专线网关唯一`ID`，形如：`dcg-9o233uri`。
        public let directConnectGatewayId: String

        public init(directConnectGatewayId: String) {
            self.directConnectGatewayId = directConnectGatewayId
        }

        enum CodingKeys: String, CodingKey {
            case directConnectGatewayId = "DirectConnectGatewayId"
        }
    }

    /// DeleteDirectConnectGateway返回参数结构体
    public struct DeleteDirectConnectGatewayResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除专线网关
    ///
    /// 本接口（DeleteDirectConnectGateway）用于删除专线网关。
    /// - 如果是 NAT 网关，删除专线网关后，NAT 规则以及 ACL 策略都被清理了。
    /// - 删除专线网关后，系统会删除路由表中跟该专线网关相关的路由策略。
    ///
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`QueryTask`接口
    @inlinable @discardableResult
    public func deleteDirectConnectGateway(_ input: DeleteDirectConnectGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDirectConnectGatewayResponse> {
        self.client.execute(action: "DeleteDirectConnectGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除专线网关
    ///
    /// 本接口（DeleteDirectConnectGateway）用于删除专线网关。
    /// - 如果是 NAT 网关，删除专线网关后，NAT 规则以及 ACL 策略都被清理了。
    /// - 删除专线网关后，系统会删除路由表中跟该专线网关相关的路由策略。
    ///
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`QueryTask`接口
    @inlinable @discardableResult
    public func deleteDirectConnectGateway(_ input: DeleteDirectConnectGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDirectConnectGatewayResponse {
        try await self.client.execute(action: "DeleteDirectConnectGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除专线网关
    ///
    /// 本接口（DeleteDirectConnectGateway）用于删除专线网关。
    /// - 如果是 NAT 网关，删除专线网关后，NAT 规则以及 ACL 策略都被清理了。
    /// - 删除专线网关后，系统会删除路由表中跟该专线网关相关的路由策略。
    ///
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`QueryTask`接口
    @inlinable @discardableResult
    public func deleteDirectConnectGateway(directConnectGatewayId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDirectConnectGatewayResponse> {
        self.deleteDirectConnectGateway(.init(directConnectGatewayId: directConnectGatewayId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除专线网关
    ///
    /// 本接口（DeleteDirectConnectGateway）用于删除专线网关。
    /// - 如果是 NAT 网关，删除专线网关后，NAT 规则以及 ACL 策略都被清理了。
    /// - 删除专线网关后，系统会删除路由表中跟该专线网关相关的路由策略。
    ///
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`QueryTask`接口
    @inlinable @discardableResult
    public func deleteDirectConnectGateway(directConnectGatewayId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDirectConnectGatewayResponse {
        try await self.deleteDirectConnectGateway(.init(directConnectGatewayId: directConnectGatewayId), region: region, logger: logger, on: eventLoop)
    }
}
