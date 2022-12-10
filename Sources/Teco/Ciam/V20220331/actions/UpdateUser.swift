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
    /// 更新用户
    ///
    /// 更新用户
    @inlinable
    public func updateUser(_ input: UpdateUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateUserResponse > {
        self.client.execute(action: "UpdateUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新用户
    ///
    /// 更新用户
    @inlinable
    public func updateUser(_ input: UpdateUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateUserResponse {
        try await self.client.execute(action: "UpdateUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UpdateUser请求参数结构体
    public struct UpdateUserRequest: TCRequestModel {
        /// 用户ID
        public let userId: String
        
        /// 用户目录ID
        public let userStoreId: String
        
        /// 用户名称
        public let userName: String?
        
        /// 手机号码
        public let phoneNumber: String?
        
        /// 邮箱
        public let email: String?
        
        /// 昵称
        public let nickname: String?
        
        /// 地址
        public let address: String?
        
        /// 用户组
        public let userGroup: [String]?
        
        /// 生日
        public let birthdate: Int64?
        
        /// 自定义属性
        public let customizationAttributes: [MemberMap]?
        
        /// 索引字段1
        public let indexedAttribute1: String?
        
        /// 索引字段2
        public let indexedAttribute2: String?
        
        /// 索引字段3
        public let indexedAttribute3: String?
        
        /// 索引字段4
        public let indexedAttribute4: String?
        
        /// 索引字段5
        public let indexedAttribute5: String?
        
        public init (userId: String, userStoreId: String, userName: String?, phoneNumber: String?, email: String?, nickname: String?, address: String?, userGroup: [String]?, birthdate: Int64?, customizationAttributes: [MemberMap]?, indexedAttribute1: String?, indexedAttribute2: String?, indexedAttribute3: String?, indexedAttribute4: String?, indexedAttribute5: String?) {
            self.userId = userId
            self.userStoreId = userStoreId
            self.userName = userName
            self.phoneNumber = phoneNumber
            self.email = email
            self.nickname = nickname
            self.address = address
            self.userGroup = userGroup
            self.birthdate = birthdate
            self.customizationAttributes = customizationAttributes
            self.indexedAttribute1 = indexedAttribute1
            self.indexedAttribute2 = indexedAttribute2
            self.indexedAttribute3 = indexedAttribute3
            self.indexedAttribute4 = indexedAttribute4
            self.indexedAttribute5 = indexedAttribute5
        }
        
        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case userStoreId = "UserStoreId"
            case userName = "UserName"
            case phoneNumber = "PhoneNumber"
            case email = "Email"
            case nickname = "Nickname"
            case address = "Address"
            case userGroup = "UserGroup"
            case birthdate = "Birthdate"
            case customizationAttributes = "CustomizationAttributes"
            case indexedAttribute1 = "IndexedAttribute1"
            case indexedAttribute2 = "IndexedAttribute2"
            case indexedAttribute3 = "IndexedAttribute3"
            case indexedAttribute4 = "IndexedAttribute4"
            case indexedAttribute5 = "IndexedAttribute5"
        }
    }
    
    /// UpdateUser返回参数结构体
    public struct UpdateUserResponse: TCResponseModel {
        /// 更新之后的用户信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let user: User
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case user = "User"
            case requestId = "RequestId"
        }
    }
}