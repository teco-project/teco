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

extension Tic {
    /// DestroyStack请求参数结构体
    public struct DestroyStackRequest: TCRequestModel {
        /// 资源栈ID
        public let stackId: String

        /// 待执行destroy事件的版本ID
        public let versionId: String

        public init(stackId: String, versionId: String) {
            self.stackId = stackId
            self.versionId = versionId
        }

        enum CodingKeys: String, CodingKey {
            case stackId = "StackId"
            case versionId = "VersionId"
        }
    }

    /// DestroyStack返回参数结构体
    public struct DestroyStackResponse: TCResponseModel {
        /// 事件ID
        public let eventId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case eventId = "EventId"
            case requestId = "RequestId"
        }
    }

    /// 执行Destroy事件
    ///
    /// 本接口（DestroyStack）用于删除资源栈下的某个版本所创建的资源。
    @inlinable
    public func destroyStack(_ input: DestroyStackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyStackResponse> {
        self.client.execute(action: "DestroyStack", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 执行Destroy事件
    ///
    /// 本接口（DestroyStack）用于删除资源栈下的某个版本所创建的资源。
    @inlinable
    public func destroyStack(_ input: DestroyStackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyStackResponse {
        try await self.client.execute(action: "DestroyStack", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 执行Destroy事件
    ///
    /// 本接口（DestroyStack）用于删除资源栈下的某个版本所创建的资源。
    @inlinable
    public func destroyStack(stackId: String, versionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyStackResponse> {
        let input = DestroyStackRequest(stackId: stackId, versionId: versionId)
        return self.client.execute(action: "DestroyStack", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 执行Destroy事件
    ///
    /// 本接口（DestroyStack）用于删除资源栈下的某个版本所创建的资源。
    @inlinable
    public func destroyStack(stackId: String, versionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyStackResponse {
        let input = DestroyStackRequest(stackId: stackId, versionId: versionId)
        return try await self.client.execute(action: "DestroyStack", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
