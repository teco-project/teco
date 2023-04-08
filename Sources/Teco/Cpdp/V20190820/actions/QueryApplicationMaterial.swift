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

extension Cpdp {
    /// QueryApplicationMaterial请求参数结构体
    public struct QueryApplicationMaterialRequest: TCRequestModel {
        /// 申报流水号
        public let declareId: String

        /// 接入环境。沙箱环境填sandbox
        public let profile: String?

        public init(declareId: String, profile: String? = nil) {
            self.declareId = declareId
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case declareId = "DeclareId"
            case profile = "Profile"
        }
    }

    /// QueryApplicationMaterial返回参数结构体
    public struct QueryApplicationMaterialResponse: TCResponseModel {
        /// 成功申报材料查询结果
        public let result: QueryDeclareResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 跨境-成功申报材料查询
    ///
    /// 跨境-成功申报材料查询。查询成功入库的申报材料。
    @inlinable
    public func queryApplicationMaterial(_ input: QueryApplicationMaterialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryApplicationMaterialResponse> {
        self.client.execute(action: "QueryApplicationMaterial", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 跨境-成功申报材料查询
    ///
    /// 跨境-成功申报材料查询。查询成功入库的申报材料。
    @inlinable
    public func queryApplicationMaterial(_ input: QueryApplicationMaterialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryApplicationMaterialResponse {
        try await self.client.execute(action: "QueryApplicationMaterial", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 跨境-成功申报材料查询
    ///
    /// 跨境-成功申报材料查询。查询成功入库的申报材料。
    @inlinable
    public func queryApplicationMaterial(declareId: String, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryApplicationMaterialResponse> {
        self.queryApplicationMaterial(.init(declareId: declareId, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 跨境-成功申报材料查询
    ///
    /// 跨境-成功申报材料查询。查询成功入库的申报材料。
    @inlinable
    public func queryApplicationMaterial(declareId: String, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryApplicationMaterialResponse {
        try await self.queryApplicationMaterial(.init(declareId: declareId, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
