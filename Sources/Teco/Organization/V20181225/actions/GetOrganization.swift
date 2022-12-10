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

extension Organization {
    /// 获取企业组织信息
    ///
    /// 获取企业组织信息
    @inlinable
    public func getOrganization(_ input: GetOrganizationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetOrganizationResponse > {
        self.client.execute(action: "GetOrganization", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取企业组织信息
    ///
    /// 获取企业组织信息
    @inlinable
    public func getOrganization(_ input: GetOrganizationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetOrganizationResponse {
        try await self.client.execute(action: "GetOrganization", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GetOrganization请求参数结构体
    public struct GetOrganizationRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// GetOrganization返回参数结构体
    public struct GetOrganizationResponse: TCResponseModel {
        /// 企业组织ID
        public let orgId: UInt64
        
        /// 创建者UIN
        public let hostUin: UInt64
        
        /// 创建者昵称
        public let nickname: String
        
        /// 创建者邮箱
        public let mail: String
        
        /// 企业组织类型
        public let orgType: UInt64
        
        /// 是否为空
        public let isEmpty: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case orgId = "OrgId"
            case hostUin = "HostUin"
            case nickname = "Nickname"
            case mail = "Mail"
            case orgType = "OrgType"
            case isEmpty = "IsEmpty"
            case requestId = "RequestId"
        }
    }
}