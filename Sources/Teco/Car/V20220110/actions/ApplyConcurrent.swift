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

extension Car {
    /// ApplyConcurrent请求参数结构体
    public struct ApplyConcurrentRequest: TCRequest {
        /// 唯一用户身份标识，由业务方自定义，平台不予理解。（可根据业务需要决定使用用户的唯一身份标识或是使用时间戳随机生成；在用户重连时应保持UserId不变）
        public let userId: String

        /// 用户IP，用户客户端的公网IP，用于就近调度
        public let userIp: String

        /// 项目ID
        public let projectId: String

        /// 应用版本ID
        public let applicationVersionId: String?

        /// 应用ID。如果是独享项目，将忽略该参数，使用项目绑定的应用。如果是共享项目，使用该参数来指定应用。
        public let applicationId: String?

        public init(userId: String, userIp: String, projectId: String, applicationVersionId: String? = nil, applicationId: String? = nil) {
            self.userId = userId
            self.userIp = userIp
            self.projectId = projectId
            self.applicationVersionId = applicationVersionId
            self.applicationId = applicationId
        }

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case userIp = "UserIp"
            case projectId = "ProjectId"
            case applicationVersionId = "ApplicationVersionId"
            case applicationId = "ApplicationId"
        }
    }

    /// ApplyConcurrent返回参数结构体
    public struct ApplyConcurrentResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 申请并发
    ///
    /// 本接口用于申请并发。接口超时时间：20秒。
    @inlinable @discardableResult
    public func applyConcurrent(_ input: ApplyConcurrentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyConcurrentResponse> {
        self.client.execute(action: "ApplyConcurrent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 申请并发
    ///
    /// 本接口用于申请并发。接口超时时间：20秒。
    @inlinable @discardableResult
    public func applyConcurrent(_ input: ApplyConcurrentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyConcurrentResponse {
        try await self.client.execute(action: "ApplyConcurrent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 申请并发
    ///
    /// 本接口用于申请并发。接口超时时间：20秒。
    @inlinable @discardableResult
    public func applyConcurrent(userId: String, userIp: String, projectId: String, applicationVersionId: String? = nil, applicationId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyConcurrentResponse> {
        self.applyConcurrent(.init(userId: userId, userIp: userIp, projectId: projectId, applicationVersionId: applicationVersionId, applicationId: applicationId), region: region, logger: logger, on: eventLoop)
    }

    /// 申请并发
    ///
    /// 本接口用于申请并发。接口超时时间：20秒。
    @inlinable @discardableResult
    public func applyConcurrent(userId: String, userIp: String, projectId: String, applicationVersionId: String? = nil, applicationId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyConcurrentResponse {
        try await self.applyConcurrent(.init(userId: userId, userIp: userIp, projectId: projectId, applicationVersionId: applicationVersionId, applicationId: applicationId), region: region, logger: logger, on: eventLoop)
    }
}
