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

extension Ciam {
    /// 查询用户列表
    ///
    /// 查询用户列表
    @inlinable
    public func listUser(_ input: ListUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ListUserResponse > {
        self.client.execute(action: "ListUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询用户列表
    ///
    /// 查询用户列表
    @inlinable
    public func listUser(_ input: ListUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUserResponse {
        try await self.client.execute(action: "ListUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ListUser请求参数结构体
    public struct ListUserRequest: TCRequestModel {
        /// 用户目录ID
        public let userStoreId: String
        
        /// 分页数据
        public let pageable: Pageable
        
        /// Key可选值为condition、userGroupId
        /// <li> **condition** </li>	Values = 查询条件，用户ID，用户名称，手机或邮箱
        /// <li> **userGroupId** </li>	Values = 用户组ID
        public let filters: [Filter]?
        
        /// 返回信息是否为原文
        public let original: Bool?
        
        public init (userStoreId: String, pageable: Pageable, filters: [Filter]?, original: Bool?) {
            self.userStoreId = userStoreId
            self.pageable = pageable
            self.filters = filters
            self.original = original
        }
        
        enum CodingKeys: String, CodingKey {
            case userStoreId = "UserStoreId"
            case pageable = "Pageable"
            case filters = "Filters"
            case original = "Original"
        }
    }
    
    /// ListUser返回参数结构体
    public struct ListUserResponse: TCResponseModel {
        /// 总条数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?
        
        /// 分页对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pageable: Pageable
        
        /// 用户列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let content: [User]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case pageable = "Pageable"
            case content = "Content"
            case requestId = "RequestId"
        }
    }
}