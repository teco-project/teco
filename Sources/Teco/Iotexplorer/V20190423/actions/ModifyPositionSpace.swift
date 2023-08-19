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

extension Iotexplorer {
    /// ModifyPositionSpace请求参数结构体
    public struct ModifyPositionSpaceRequest: TCRequest {
        /// 位置空间Id
        public let spaceId: String

        /// 位置空间名称
        public let spaceName: String

        /// 授权类型
        public let authorizeType: Int64

        /// 产品列表
        public let productIdList: [String]

        /// 位置空间描述
        public let description: String?

        /// 缩略图
        public let icon: String?

        public init(spaceId: String, spaceName: String, authorizeType: Int64, productIdList: [String], description: String? = nil, icon: String? = nil) {
            self.spaceId = spaceId
            self.spaceName = spaceName
            self.authorizeType = authorizeType
            self.productIdList = productIdList
            self.description = description
            self.icon = icon
        }

        enum CodingKeys: String, CodingKey {
            case spaceId = "SpaceId"
            case spaceName = "SpaceName"
            case authorizeType = "AuthorizeType"
            case productIdList = "ProductIdList"
            case description = "Description"
            case icon = "Icon"
        }
    }

    /// ModifyPositionSpace返回参数结构体
    public struct ModifyPositionSpaceResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新位置空间
    @inlinable @discardableResult
    public func modifyPositionSpace(_ input: ModifyPositionSpaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPositionSpaceResponse> {
        self.client.execute(action: "ModifyPositionSpace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新位置空间
    @inlinable @discardableResult
    public func modifyPositionSpace(_ input: ModifyPositionSpaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPositionSpaceResponse {
        try await self.client.execute(action: "ModifyPositionSpace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新位置空间
    @inlinable @discardableResult
    public func modifyPositionSpace(spaceId: String, spaceName: String, authorizeType: Int64, productIdList: [String], description: String? = nil, icon: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPositionSpaceResponse> {
        self.modifyPositionSpace(.init(spaceId: spaceId, spaceName: spaceName, authorizeType: authorizeType, productIdList: productIdList, description: description, icon: icon), region: region, logger: logger, on: eventLoop)
    }

    /// 更新位置空间
    @inlinable @discardableResult
    public func modifyPositionSpace(spaceId: String, spaceName: String, authorizeType: Int64, productIdList: [String], description: String? = nil, icon: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPositionSpaceResponse {
        try await self.modifyPositionSpace(.init(spaceId: spaceId, spaceName: spaceName, authorizeType: authorizeType, productIdList: productIdList, description: description, icon: icon), region: region, logger: logger, on: eventLoop)
    }
}
