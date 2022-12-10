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

extension Iai {
    /// 复制人员
    ///
    /// 将已存在于某人员库的人员复制到其他人员库，该人员的描述信息不会被复制。单个人员最多只能同时存在100个人员库中。
    /// >     
    /// - 注：若该人员创建时算法模型版本为2.0，复制到非2.0算法模型版本的Group中时，复制操作将会失败。
    @inlinable
    public func copyPerson(_ input: CopyPersonRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CopyPersonResponse > {
        self.client.execute(action: "CopyPerson", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 复制人员
    ///
    /// 将已存在于某人员库的人员复制到其他人员库，该人员的描述信息不会被复制。单个人员最多只能同时存在100个人员库中。
    /// >     
    /// - 注：若该人员创建时算法模型版本为2.0，复制到非2.0算法模型版本的Group中时，复制操作将会失败。
    @inlinable
    public func copyPerson(_ input: CopyPersonRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CopyPersonResponse {
        try await self.client.execute(action: "CopyPerson", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CopyPerson请求参数结构体
    public struct CopyPersonRequest: TCRequestModel {
        /// 人员ID，取值为创建人员接口中的PersonId
        public let personId: String
        
        /// 待加入的人员库列表，数组元素取值为创建人员库接口中的GroupId
        public let groupIds: [String]
        
        public init (personId: String, groupIds: [String]) {
            self.personId = personId
            self.groupIds = groupIds
        }
        
        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
            case groupIds = "GroupIds"
        }
    }
    
    /// CopyPerson返回参数结构体
    public struct CopyPersonResponse: TCResponseModel {
        /// 成功加入的人员库数量
        public let sucGroupNum: UInt64
        
        /// 成功加入的人员库列表
        public let sucGroupIds: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case sucGroupNum = "SucGroupNum"
            case sucGroupIds = "SucGroupIds"
            case requestId = "RequestId"
        }
    }
}