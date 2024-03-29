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

extension Scf {
    /// PublishVersion请求参数结构体
    public struct PublishVersionRequest: TCRequest {
        /// 发布函数的名称
        public let functionName: String

        /// 函数的描述
        public let description: String?

        /// 函数的命名空间
        public let namespace: String?

        public init(functionName: String, description: String? = nil, namespace: String? = nil) {
            self.functionName = functionName
            self.description = description
            self.namespace = namespace
        }

        enum CodingKeys: String, CodingKey {
            case functionName = "FunctionName"
            case description = "Description"
            case namespace = "Namespace"
        }
    }

    /// PublishVersion返回参数结构体
    public struct PublishVersionResponse: TCResponse {
        /// 函数的版本
        public let functionVersion: String

        /// 代码大小
        public let codeSize: Int64

        /// 最大可用内存
        public let memorySize: Int64

        /// 函数的描述
        public let description: String

        /// 函数的入口
        public let handler: String

        /// 函数的超时时间
        public let timeout: Int64

        /// 函数的运行环境
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let runtime: String?

        /// 函数的命名空间
        public let namespace: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case functionVersion = "FunctionVersion"
            case codeSize = "CodeSize"
            case memorySize = "MemorySize"
            case description = "Description"
            case handler = "Handler"
            case timeout = "Timeout"
            case runtime = "Runtime"
            case namespace = "Namespace"
            case requestId = "RequestId"
        }
    }

    /// 发布新版本
    ///
    /// 该接口用于用户发布新版本函数。
    @inlinable
    public func publishVersion(_ input: PublishVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PublishVersionResponse> {
        self.client.execute(action: "PublishVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发布新版本
    ///
    /// 该接口用于用户发布新版本函数。
    @inlinable
    public func publishVersion(_ input: PublishVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PublishVersionResponse {
        try await self.client.execute(action: "PublishVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 发布新版本
    ///
    /// 该接口用于用户发布新版本函数。
    @inlinable
    public func publishVersion(functionName: String, description: String? = nil, namespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PublishVersionResponse> {
        self.publishVersion(.init(functionName: functionName, description: description, namespace: namespace), region: region, logger: logger, on: eventLoop)
    }

    /// 发布新版本
    ///
    /// 该接口用于用户发布新版本函数。
    @inlinable
    public func publishVersion(functionName: String, description: String? = nil, namespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PublishVersionResponse {
        try await self.publishVersion(.init(functionName: functionName, description: description, namespace: namespace), region: region, logger: logger, on: eventLoop)
    }
}
