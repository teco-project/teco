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

extension Teo {
    /// DeleteAliasDomain请求参数结构体
    public struct DeleteAliasDomainRequest: TCRequestModel {
        /// 站点 ID。
        public let zoneId: String
        
        /// 待删除别称域名名称。如果为空，则不执行删除操作。
        public let aliasNames: [String]?
        
        public init (zoneId: String, aliasNames: [String]? = nil) {
            self.zoneId = zoneId
            self.aliasNames = aliasNames
        }
        
        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case aliasNames = "AliasNames"
        }
    }
    
    /// DeleteAliasDomain返回参数结构体
    public struct DeleteAliasDomainResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 删除别称域名
    ///
    /// 删除别称域名。
    @inlinable
    public func deleteAliasDomain(_ input: DeleteAliasDomainRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteAliasDomainResponse > {
        self.client.execute(action: "DeleteAliasDomain", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除别称域名
    ///
    /// 删除别称域名。
    @inlinable
    public func deleteAliasDomain(_ input: DeleteAliasDomainRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAliasDomainResponse {
        try await self.client.execute(action: "DeleteAliasDomain", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
