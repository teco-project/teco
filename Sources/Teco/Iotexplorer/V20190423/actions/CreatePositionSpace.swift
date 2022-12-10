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

extension Iotexplorer {
    /// 创建位置空间
    @inlinable
    public func createPositionSpace(_ input: CreatePositionSpaceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreatePositionSpaceResponse > {
        self.client.execute(action: "CreatePositionSpace", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建位置空间
    @inlinable
    public func createPositionSpace(_ input: CreatePositionSpaceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePositionSpaceResponse {
        try await self.client.execute(action: "CreatePositionSpace", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreatePositionSpace请求参数结构体
    public struct CreatePositionSpaceRequest: TCRequestModel {
        /// 项目ID
        public let projectId: String
        
        /// 空间名称
        public let spaceName: String
        
        /// 授权类型，0：只读 1：读写
        public let authorizeType: Int64
        
        /// 产品列表
        public let productIdList: [String]
        
        /// 描述
        public let description: String?
        
        /// 缩略图
        public let icon: String?
        
        public init (projectId: String, spaceName: String, authorizeType: Int64, productIdList: [String], description: String?, icon: String?) {
            self.projectId = projectId
            self.spaceName = spaceName
            self.authorizeType = authorizeType
            self.productIdList = productIdList
            self.description = description
            self.icon = icon
        }
        
        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case spaceName = "SpaceName"
            case authorizeType = "AuthorizeType"
            case productIdList = "ProductIdList"
            case description = "Description"
            case icon = "Icon"
        }
    }
    
    /// CreatePositionSpace返回参数结构体
    public struct CreatePositionSpaceResponse: TCResponseModel {
        /// 空间Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let spaceId: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case spaceId = "SpaceId"
            case requestId = "RequestId"
        }
    }
}
