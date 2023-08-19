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

extension Wedata {
    /// CreateCustomFunction请求参数结构体
    public struct CreateCustomFunctionRequest: TCRequest {
        /// 类型：HIVE、SPARK
        public let type: String

        /// 分类：窗口函数、聚合函数、日期函数......
        public let kind: String

        /// 函数名称
        public let name: String

        /// 集群实例引擎 ID
        public let clusterIdentifier: String

        /// 数据库名称
        public let dbName: String?

        /// 项目ID
        public let projectId: String?

        public init(type: String, kind: String, name: String, clusterIdentifier: String, dbName: String? = nil, projectId: String? = nil) {
            self.type = type
            self.kind = kind
            self.name = name
            self.clusterIdentifier = clusterIdentifier
            self.dbName = dbName
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case kind = "Kind"
            case name = "Name"
            case clusterIdentifier = "ClusterIdentifier"
            case dbName = "DbName"
            case projectId = "ProjectId"
        }
    }

    /// CreateCustomFunction返回参数结构体
    public struct CreateCustomFunctionResponse: TCResponse {
        /// 函数唯一标识
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let functionId: String?

        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorMessage: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case functionId = "FunctionId"
            case errorMessage = "ErrorMessage"
            case requestId = "RequestId"
        }
    }

    /// 创建用户自定义函数
    @inlinable
    public func createCustomFunction(_ input: CreateCustomFunctionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCustomFunctionResponse> {
        self.client.execute(action: "CreateCustomFunction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建用户自定义函数
    @inlinable
    public func createCustomFunction(_ input: CreateCustomFunctionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomFunctionResponse {
        try await self.client.execute(action: "CreateCustomFunction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建用户自定义函数
    @inlinable
    public func createCustomFunction(type: String, kind: String, name: String, clusterIdentifier: String, dbName: String? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCustomFunctionResponse> {
        self.createCustomFunction(.init(type: type, kind: kind, name: name, clusterIdentifier: clusterIdentifier, dbName: dbName, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建用户自定义函数
    @inlinable
    public func createCustomFunction(type: String, kind: String, name: String, clusterIdentifier: String, dbName: String? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomFunctionResponse {
        try await self.createCustomFunction(.init(type: type, kind: kind, name: name, clusterIdentifier: clusterIdentifier, dbName: dbName, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
