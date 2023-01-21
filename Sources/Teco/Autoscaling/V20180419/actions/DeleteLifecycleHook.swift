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

extension As {
    /// DeleteLifecycleHook请求参数结构体
    public struct DeleteLifecycleHookRequest: TCRequestModel {
        /// 生命周期挂钩ID
        public let lifecycleHookId: String

        public init(lifecycleHookId: String) {
            self.lifecycleHookId = lifecycleHookId
        }

        enum CodingKeys: String, CodingKey {
            case lifecycleHookId = "LifecycleHookId"
        }
    }

    /// DeleteLifecycleHook返回参数结构体
    public struct DeleteLifecycleHookResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除生命周期挂钩
    ///
    /// 本接口（DeleteLifecycleHook）用于删除生命周期挂钩。
    @inlinable @discardableResult
    public func deleteLifecycleHook(_ input: DeleteLifecycleHookRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLifecycleHookResponse> {
        self.client.execute(action: "DeleteLifecycleHook", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除生命周期挂钩
    ///
    /// 本接口（DeleteLifecycleHook）用于删除生命周期挂钩。
    @inlinable @discardableResult
    public func deleteLifecycleHook(_ input: DeleteLifecycleHookRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLifecycleHookResponse {
        try await self.client.execute(action: "DeleteLifecycleHook", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除生命周期挂钩
    ///
    /// 本接口（DeleteLifecycleHook）用于删除生命周期挂钩。
    @inlinable @discardableResult
    public func deleteLifecycleHook(lifecycleHookId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLifecycleHookResponse> {
        self.deleteLifecycleHook(DeleteLifecycleHookRequest(lifecycleHookId: lifecycleHookId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除生命周期挂钩
    ///
    /// 本接口（DeleteLifecycleHook）用于删除生命周期挂钩。
    @inlinable @discardableResult
    public func deleteLifecycleHook(lifecycleHookId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLifecycleHookResponse {
        try await self.deleteLifecycleHook(DeleteLifecycleHookRequest(lifecycleHookId: lifecycleHookId), region: region, logger: logger, on: eventLoop)
    }
}
