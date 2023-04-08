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

extension Cme {
    /// DeleteMaterial请求参数结构体
    public struct DeleteMaterialRequest: TCRequestModel {
        /// 平台名称，指定访问的平台。
        public let platform: String

        /// 媒体 Id。
        public let materialId: String

        /// 操作者。填写用户的 Id，用于标识调用者及校验媒体删除权限。
        public let `operator`: String?

        public init(platform: String, materialId: String, operator: String? = nil) {
            self.platform = platform
            self.materialId = materialId
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case materialId = "MaterialId"
            case `operator` = "Operator"
        }
    }

    /// DeleteMaterial返回参数结构体
    public struct DeleteMaterialResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除媒体
    ///
    /// 根据媒体 Id 删除媒体。
    @inlinable @discardableResult
    public func deleteMaterial(_ input: DeleteMaterialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMaterialResponse> {
        self.client.execute(action: "DeleteMaterial", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除媒体
    ///
    /// 根据媒体 Id 删除媒体。
    @inlinable @discardableResult
    public func deleteMaterial(_ input: DeleteMaterialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMaterialResponse {
        try await self.client.execute(action: "DeleteMaterial", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除媒体
    ///
    /// 根据媒体 Id 删除媒体。
    @inlinable @discardableResult
    public func deleteMaterial(platform: String, materialId: String, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMaterialResponse> {
        self.deleteMaterial(.init(platform: platform, materialId: materialId, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 删除媒体
    ///
    /// 根据媒体 Id 删除媒体。
    @inlinable @discardableResult
    public func deleteMaterial(platform: String, materialId: String, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMaterialResponse {
        try await self.deleteMaterial(.init(platform: platform, materialId: materialId, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
