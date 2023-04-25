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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Scf {
    /// GetAlias请求参数结构体
    public struct GetAliasRequest: TCRequestModel {
        /// 函数名称
        public let functionName: String

        /// 别名的名称
        public let name: String

        /// 函数所在的命名空间
        public let namespace: String?

        public init(functionName: String, name: String, namespace: String? = nil) {
            self.functionName = functionName
            self.name = name
            self.namespace = namespace
        }

        enum CodingKeys: String, CodingKey {
            case functionName = "FunctionName"
            case name = "Name"
            case namespace = "Namespace"
        }
    }

    /// GetAlias返回参数结构体
    public struct GetAliasResponse: TCResponseModel {
        /// 别名指向的主版本
        public let functionVersion: String

        /// 别名的名称
        public let name: String

        /// 别名的路由信息
        public let routingConfig: RoutingConfig

        /// 别名的描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var addTime: Date?

        /// 更新时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var modTime: Date?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case functionVersion = "FunctionVersion"
            case name = "Name"
            case routingConfig = "RoutingConfig"
            case description = "Description"
            case addTime = "AddTime"
            case modTime = "ModTime"
            case requestId = "RequestId"
        }
    }

    /// 获取别名详细信息
    ///
    /// 获取别名的详细信息，包括名称、描述、版本、路由信息等。
    @inlinable
    public func getAlias(_ input: GetAliasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAliasResponse> {
        self.client.execute(action: "GetAlias", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取别名详细信息
    ///
    /// 获取别名的详细信息，包括名称、描述、版本、路由信息等。
    @inlinable
    public func getAlias(_ input: GetAliasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAliasResponse {
        try await self.client.execute(action: "GetAlias", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取别名详细信息
    ///
    /// 获取别名的详细信息，包括名称、描述、版本、路由信息等。
    @inlinable
    public func getAlias(functionName: String, name: String, namespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAliasResponse> {
        self.getAlias(.init(functionName: functionName, name: name, namespace: namespace), region: region, logger: logger, on: eventLoop)
    }

    /// 获取别名详细信息
    ///
    /// 获取别名的详细信息，包括名称、描述、版本、路由信息等。
    @inlinable
    public func getAlias(functionName: String, name: String, namespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAliasResponse {
        try await self.getAlias(.init(functionName: functionName, name: name, namespace: namespace), region: region, logger: logger, on: eventLoop)
    }
}
