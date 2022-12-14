//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cls {
    /// CreateLogset请求参数结构体
    public struct CreateLogsetRequest: TCRequestModel {
        /// 日志集名字，不能重名
        public let logsetName: String

        /// 标签描述列表。最大支持10个标签键值对，并且不能有重复的键值对
        public let tags: [Tag]?

        public init(logsetName: String, tags: [Tag]? = nil) {
            self.logsetName = logsetName
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case logsetName = "LogsetName"
            case tags = "Tags"
        }
    }

    /// CreateLogset返回参数结构体
    public struct CreateLogsetResponse: TCResponseModel {
        /// 日志集ID
        public let logsetId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case logsetId = "LogsetId"
            case requestId = "RequestId"
        }
    }

    /// 创建日志集
    ///
    /// 本接口用于创建日志集，返回新创建的日志集的 ID。
    @inlinable
    public func createLogset(_ input: CreateLogsetRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateLogsetResponse > {
        self.client.execute(action: "CreateLogset", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建日志集
    ///
    /// 本接口用于创建日志集，返回新创建的日志集的 ID。
    @inlinable
    public func createLogset(_ input: CreateLogsetRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLogsetResponse {
        try await self.client.execute(action: "CreateLogset", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建日志集
    ///
    /// 本接口用于创建日志集，返回新创建的日志集的 ID。
    @inlinable
    public func createLogset(logsetName: String, tags: [Tag]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateLogsetResponse > {
        self.createLogset(CreateLogsetRequest(logsetName: logsetName, tags: tags), logger: logger, on: eventLoop)
    }

    /// 创建日志集
    ///
    /// 本接口用于创建日志集，返回新创建的日志集的 ID。
    @inlinable
    public func createLogset(logsetName: String, tags: [Tag]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLogsetResponse {
        try await self.createLogset(CreateLogsetRequest(logsetName: logsetName, tags: tags), logger: logger, on: eventLoop)
    }
}
