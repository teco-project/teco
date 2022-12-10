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

extension Vpc {
    /// 增量更新网络ACL五元组规则接口
    ///
    /// 本接口（ModifyNetworkAclQuintupleEntries）用于修改网络ACL五元组的入站规则和出站规则。在NetworkAclQuintupleEntrySet参数中：NetworkAclQuintupleEntry需要提供NetworkAclQuintupleEntryId。
    @inlinable
    public func modifyNetworkAclQuintupleEntries(_ input: ModifyNetworkAclQuintupleEntriesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyNetworkAclQuintupleEntriesResponse > {
        self.client.execute(action: "ModifyNetworkAclQuintupleEntries", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 增量更新网络ACL五元组规则接口
    ///
    /// 本接口（ModifyNetworkAclQuintupleEntries）用于修改网络ACL五元组的入站规则和出站规则。在NetworkAclQuintupleEntrySet参数中：NetworkAclQuintupleEntry需要提供NetworkAclQuintupleEntryId。
    @inlinable
    public func modifyNetworkAclQuintupleEntries(_ input: ModifyNetworkAclQuintupleEntriesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNetworkAclQuintupleEntriesResponse {
        try await self.client.execute(action: "ModifyNetworkAclQuintupleEntries", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyNetworkAclQuintupleEntries请求参数结构体
    public struct ModifyNetworkAclQuintupleEntriesRequest: TCRequestModel {
        /// 网络ACL实例ID。例如：acl-12345678。
        public let networkAclId: String
        
        /// 网络五元组ACL规则集。
        public let networkAclQuintupleSet: NetworkAclQuintupleEntries
        
        public init (networkAclId: String, networkAclQuintupleSet: NetworkAclQuintupleEntries) {
            self.networkAclId = networkAclId
            self.networkAclQuintupleSet = networkAclQuintupleSet
        }
        
        enum CodingKeys: String, CodingKey {
            case networkAclId = "NetworkAclId"
            case networkAclQuintupleSet = "NetworkAclQuintupleSet"
        }
    }
    
    /// ModifyNetworkAclQuintupleEntries返回参数结构体
    public struct ModifyNetworkAclQuintupleEntriesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}