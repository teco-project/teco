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

extension Cii {
    /// CreateUnderwriteTaskById请求参数结构体
    public struct CreateUnderwriteTaskByIdRequest: TCRequestModel {
        /// 主任务ID数组，
        public let mainTaskIds: [String]

        /// 回调地址，可不传（提供轮询机制）。
        public let callbackUrl: String?

        public init(mainTaskIds: [String], callbackUrl: String? = nil) {
            self.mainTaskIds = mainTaskIds
            self.callbackUrl = callbackUrl
        }

        enum CodingKeys: String, CodingKey {
            case mainTaskIds = "MainTaskIds"
            case callbackUrl = "CallbackUrl"
        }
    }

    /// CreateUnderwriteTaskById返回参数结构体
    public struct CreateUnderwriteTaskByIdResponse: TCResponseModel {
        /// 核保任务ID数据
        public let underwriteTaskIds: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case underwriteTaskIds = "UnderwriteTaskIds"
            case requestId = "RequestId"
        }
    }

    /// 根据结构化任务ID创建核保任务
    ///
    /// 本接口(CreateUnderwriteTaskById)用于根据结构化任务ID创建核保任务
    @inlinable
    public func createUnderwriteTaskById(_ input: CreateUnderwriteTaskByIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUnderwriteTaskByIdResponse> {
        self.client.execute(action: "CreateUnderwriteTaskById", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 根据结构化任务ID创建核保任务
    ///
    /// 本接口(CreateUnderwriteTaskById)用于根据结构化任务ID创建核保任务
    @inlinable
    public func createUnderwriteTaskById(_ input: CreateUnderwriteTaskByIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUnderwriteTaskByIdResponse {
        try await self.client.execute(action: "CreateUnderwriteTaskById", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 根据结构化任务ID创建核保任务
    ///
    /// 本接口(CreateUnderwriteTaskById)用于根据结构化任务ID创建核保任务
    @inlinable
    public func createUnderwriteTaskById(mainTaskIds: [String], callbackUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUnderwriteTaskByIdResponse> {
        self.createUnderwriteTaskById(.init(mainTaskIds: mainTaskIds, callbackUrl: callbackUrl), region: region, logger: logger, on: eventLoop)
    }

    /// 根据结构化任务ID创建核保任务
    ///
    /// 本接口(CreateUnderwriteTaskById)用于根据结构化任务ID创建核保任务
    @inlinable
    public func createUnderwriteTaskById(mainTaskIds: [String], callbackUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUnderwriteTaskByIdResponse {
        try await self.createUnderwriteTaskById(.init(mainTaskIds: mainTaskIds, callbackUrl: callbackUrl), region: region, logger: logger, on: eventLoop)
    }
}
