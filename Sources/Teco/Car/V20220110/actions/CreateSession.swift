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

extension Car {
    /// CreateSession请求参数结构体
    public struct CreateSessionRequest: TCRequestModel {
        /// 唯一用户身份标识，由业务方自定义，平台不予理解。（可根据业务需要决定使用用户的唯一身份标识或是使用时间戳随机生成；在用户重连时应保持UserId不变）
        public let userId: String

        /// 用户IP，用户客户端的公网IP，用于就近调度
        public let userIp: String

        /// 客户端session信息，从SDK请求中获得
        public let clientSession: String

        /// 云端运行模式。
        /// RunWithoutClient：允许无客户端连接的情况下仍保持云端 App 运行
        /// 默认值（空）：要求必须有客户端连接才会保持云端 App 运行。
        public let runMode: String?

        public init(userId: String, userIp: String, clientSession: String, runMode: String? = nil) {
            self.userId = userId
            self.userIp = userIp
            self.clientSession = clientSession
            self.runMode = runMode
        }

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case userIp = "UserIp"
            case clientSession = "ClientSession"
            case runMode = "RunMode"
        }
    }

    /// CreateSession返回参数结构体
    public struct CreateSessionResponse: TCResponseModel {
        /// 服务端session信息，返回给SDK
        public let serverSession: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case serverSession = "ServerSession"
            case requestId = "RequestId"
        }
    }

    /// 创建会话
    @inlinable
    public func createSession(_ input: CreateSessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSessionResponse> {
        self.client.execute(action: "CreateSession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建会话
    @inlinable
    public func createSession(_ input: CreateSessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSessionResponse {
        try await self.client.execute(action: "CreateSession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建会话
    @inlinable
    public func createSession(userId: String, userIp: String, clientSession: String, runMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSessionResponse> {
        self.createSession(.init(userId: userId, userIp: userIp, clientSession: clientSession, runMode: runMode), region: region, logger: logger, on: eventLoop)
    }

    /// 创建会话
    @inlinable
    public func createSession(userId: String, userIp: String, clientSession: String, runMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSessionResponse {
        try await self.createSession(.init(userId: userId, userIp: userIp, clientSession: clientSession, runMode: runMode), region: region, logger: logger, on: eventLoop)
    }
}
