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

extension Ame {
    /// DescribeItemById请求参数结构体
    public struct DescribeItemByIdRequest: TCRequestModel {
        /// 歌曲ID，目前暂不支持批量查询
        public let itemIDs: String
        
        public init (itemIDs: String) {
            self.itemIDs = itemIDs
        }
        
        enum CodingKeys: String, CodingKey {
            case itemIDs = "ItemIDs"
        }
    }
    
    /// DescribeItemById返回参数结构体
    public struct DescribeItemByIdResponse: TCResponseModel {
        /// 歌曲信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [Item]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case items = "Items"
            case requestId = "RequestId"
        }
    }
    
    /// 根据歌曲ID查询歌曲信息
    @inlinable
    public func describeItemById(_ input: DescribeItemByIdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeItemByIdResponse > {
        self.client.execute(action: "DescribeItemById", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 根据歌曲ID查询歌曲信息
    @inlinable
    public func describeItemById(_ input: DescribeItemByIdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeItemByIdResponse {
        try await self.client.execute(action: "DescribeItemById", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
