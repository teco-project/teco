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

extension Tkgdq {
    /// DescribeEntity请求参数结构体
    public struct DescribeEntityRequest: TCRequestModel {
        /// 实体名称
        public let entityName: String

        public init(entityName: String) {
            self.entityName = entityName
        }

        enum CodingKeys: String, CodingKey {
            case entityName = "EntityName"
        }
    }

    /// DescribeEntity返回参数结构体
    public struct DescribeEntityResponse: TCResponseModel {
        /// 返回查询实体相关信息
        public let content: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case content = "Content"
            case requestId = "RequestId"
        }
    }

    /// 实体信息查询
    ///
    /// 输入实体名称，返回实体相关的信息如实体别名、实体英文名、实体详细信息、相关实体等
    @inlinable
    public func describeEntity(_ input: DescribeEntityRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEntityResponse > {
        self.client.execute(action: "DescribeEntity", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 实体信息查询
    ///
    /// 输入实体名称，返回实体相关的信息如实体别名、实体英文名、实体详细信息、相关实体等
    @inlinable
    public func describeEntity(_ input: DescribeEntityRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEntityResponse {
        try await self.client.execute(action: "DescribeEntity", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 实体信息查询
    ///
    /// 输入实体名称，返回实体相关的信息如实体别名、实体英文名、实体详细信息、相关实体等
    @inlinable
    public func describeEntity(entityName: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEntityResponse > {
        self.describeEntity(DescribeEntityRequest(entityName: entityName), logger: logger, on: eventLoop)
    }

    /// 实体信息查询
    ///
    /// 输入实体名称，返回实体相关的信息如实体别名、实体英文名、实体详细信息、相关实体等
    @inlinable
    public func describeEntity(entityName: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEntityResponse {
        try await self.describeEntity(DescribeEntityRequest(entityName: entityName), logger: logger, on: eventLoop)
    }
}
