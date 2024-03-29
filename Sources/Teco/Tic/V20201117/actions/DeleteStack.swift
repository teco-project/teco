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

extension Tic {
    /// DeleteStack请求参数结构体
    public struct DeleteStackRequest: TCRequest {
        /// 待删除的资源栈ID
        public let stackId: String

        public init(stackId: String) {
            self.stackId = stackId
        }

        enum CodingKeys: String, CodingKey {
            case stackId = "StackId"
        }
    }

    /// DeleteStack返回参数结构体
    public struct DeleteStackResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除资源栈
    ///
    /// 本接口（DeleteStack）用于删除一个资源栈（配置、版本、事件信息）。但不会销毁资源管理的云资源。如果需要销毁资源栈管理的云资源，请调用 DestoryStack 接口销毁云资源。
    @inlinable @discardableResult
    public func deleteStack(_ input: DeleteStackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteStackResponse> {
        self.client.execute(action: "DeleteStack", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除资源栈
    ///
    /// 本接口（DeleteStack）用于删除一个资源栈（配置、版本、事件信息）。但不会销毁资源管理的云资源。如果需要销毁资源栈管理的云资源，请调用 DestoryStack 接口销毁云资源。
    @inlinable @discardableResult
    public func deleteStack(_ input: DeleteStackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteStackResponse {
        try await self.client.execute(action: "DeleteStack", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除资源栈
    ///
    /// 本接口（DeleteStack）用于删除一个资源栈（配置、版本、事件信息）。但不会销毁资源管理的云资源。如果需要销毁资源栈管理的云资源，请调用 DestoryStack 接口销毁云资源。
    @inlinable @discardableResult
    public func deleteStack(stackId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteStackResponse> {
        self.deleteStack(.init(stackId: stackId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除资源栈
    ///
    /// 本接口（DeleteStack）用于删除一个资源栈（配置、版本、事件信息）。但不会销毁资源管理的云资源。如果需要销毁资源栈管理的云资源，请调用 DestoryStack 接口销毁云资源。
    @inlinable @discardableResult
    public func deleteStack(stackId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteStackResponse {
        try await self.deleteStack(.init(stackId: stackId), region: region, logger: logger, on: eventLoop)
    }
}
