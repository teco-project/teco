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

extension Dsgc {
    /// ModifyDSPACategoryRelation请求参数结构体
    public struct ModifyDSPACategoryRelationRequest: TCRequest {
        /// dspa实例id
        public let dspaId: String

        /// 当前分类id
        public let categoryId: UInt64

        /// 合并到的分类id
        public let mergedCategoryId: Int64

        /// 合规组模板id
        public let complianceId: UInt64

        public init(dspaId: String, categoryId: UInt64, mergedCategoryId: Int64, complianceId: UInt64) {
            self.dspaId = dspaId
            self.categoryId = categoryId
            self.mergedCategoryId = mergedCategoryId
            self.complianceId = complianceId
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case categoryId = "CategoryId"
            case mergedCategoryId = "MergedCategoryId"
            case complianceId = "ComplianceId"
        }
    }

    /// ModifyDSPACategoryRelation返回参数结构体
    public struct ModifyDSPACategoryRelationResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改分类分级关系
    @inlinable @discardableResult
    public func modifyDSPACategoryRelation(_ input: ModifyDSPACategoryRelationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDSPACategoryRelationResponse> {
        self.client.execute(action: "ModifyDSPACategoryRelation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改分类分级关系
    @inlinable @discardableResult
    public func modifyDSPACategoryRelation(_ input: ModifyDSPACategoryRelationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDSPACategoryRelationResponse {
        try await self.client.execute(action: "ModifyDSPACategoryRelation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改分类分级关系
    @inlinable @discardableResult
    public func modifyDSPACategoryRelation(dspaId: String, categoryId: UInt64, mergedCategoryId: Int64, complianceId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDSPACategoryRelationResponse> {
        self.modifyDSPACategoryRelation(.init(dspaId: dspaId, categoryId: categoryId, mergedCategoryId: mergedCategoryId, complianceId: complianceId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改分类分级关系
    @inlinable @discardableResult
    public func modifyDSPACategoryRelation(dspaId: String, categoryId: UInt64, mergedCategoryId: Int64, complianceId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDSPACategoryRelationResponse {
        try await self.modifyDSPACategoryRelation(.init(dspaId: dspaId, categoryId: categoryId, mergedCategoryId: mergedCategoryId, complianceId: complianceId), region: region, logger: logger, on: eventLoop)
    }
}
