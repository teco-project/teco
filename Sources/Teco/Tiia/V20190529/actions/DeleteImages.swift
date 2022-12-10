//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tiia {
    /// 删除图片
    ///
    /// 删除图片。
    @inlinable
    public func deleteImages(_ input: DeleteImagesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteImagesResponse > {
        self.client.execute(action: "DeleteImages", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除图片
    ///
    /// 删除图片。
    @inlinable
    public func deleteImages(_ input: DeleteImagesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteImagesResponse {
        try await self.client.execute(action: "DeleteImages", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteImages请求参数结构体
    public struct DeleteImagesRequest: TCRequestModel {
        /// 图库名称。
        public let groupId: String
        
        /// 物品ID。
        public let entityId: String
        
        /// 图片名称，如果不指定本参数，则删除EntityId下所有的图片；否则删除指定的图。
        public let picName: String?
        
        public init (groupId: String, entityId: String, picName: String?) {
            self.groupId = groupId
            self.entityId = entityId
            self.picName = picName
        }
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case entityId = "EntityId"
            case picName = "PicName"
        }
    }
    
    /// DeleteImages返回参数结构体
    public struct DeleteImagesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}