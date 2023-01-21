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

extension Scf {
    /// ListAliases请求参数结构体
    public struct ListAliasesRequest: TCRequestModel {
        /// 函数名称
        public let functionName: String

        /// 函数所在的命名空间
        public let namespace: String?

        /// 如果提供此参数，则只返回与该函数版本有关联的别名
        public let functionVersion: String?

        /// 数据偏移量，默认值为 0
        public let offset: String?

        /// 返回数据长度，默认值为 20
        public let limit: String?

        public init(functionName: String, namespace: String? = nil, functionVersion: String? = nil, offset: String? = nil, limit: String? = nil) {
            self.functionName = functionName
            self.namespace = namespace
            self.functionVersion = functionVersion
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case functionName = "FunctionName"
            case namespace = "Namespace"
            case functionVersion = "FunctionVersion"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// ListAliases返回参数结构体
    public struct ListAliasesResponse: TCResponseModel {
        /// 别名列表
        public let aliases: [Alias]

        /// 别名总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case aliases = "Aliases"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取别名列表
    ///
    /// 返回一个函数下的全部别名，可以根据特定函数版本过滤。
    @inlinable
    public func listAliases(_ input: ListAliasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAliasesResponse> {
        self.client.execute(action: "ListAliases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取别名列表
    ///
    /// 返回一个函数下的全部别名，可以根据特定函数版本过滤。
    @inlinable
    public func listAliases(_ input: ListAliasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAliasesResponse {
        try await self.client.execute(action: "ListAliases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取别名列表
    ///
    /// 返回一个函数下的全部别名，可以根据特定函数版本过滤。
    @inlinable
    public func listAliases(functionName: String, namespace: String? = nil, functionVersion: String? = nil, offset: String? = nil, limit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAliasesResponse> {
        self.listAliases(ListAliasesRequest(functionName: functionName, namespace: namespace, functionVersion: functionVersion, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取别名列表
    ///
    /// 返回一个函数下的全部别名，可以根据特定函数版本过滤。
    @inlinable
    public func listAliases(functionName: String, namespace: String? = nil, functionVersion: String? = nil, offset: String? = nil, limit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAliasesResponse {
        try await self.listAliases(ListAliasesRequest(functionName: functionName, namespace: namespace, functionVersion: functionVersion, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
