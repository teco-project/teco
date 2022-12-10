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
    /// 修改别称域名状态
    ///
    /// 修改别称域名状态。
    @inlinable
    public func modifyAliasDomainStatus(_ input: ModifyAliasDomainStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyAliasDomainStatusResponse > {
        self.client.execute(action: "ModifyAliasDomainStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改别称域名状态
    ///
    /// 修改别称域名状态。
    @inlinable
    public func modifyAliasDomainStatus(_ input: ModifyAliasDomainStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAliasDomainStatusResponse {
        try await self.client.execute(action: "ModifyAliasDomainStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyAliasDomainStatus请求参数结构体
    public struct ModifyAliasDomainStatusRequest: TCRequestModel {
        /// 站点 ID。
        public let zoneId: String
        
        /// 别称域名状态，取值有：
        /// <li> false：开启别称域名；</li>
        /// <li> true：关闭别称域名。</li>
        public let paused: Bool
        
        /// 待修改状态的别称域名名称。如果为空，则不执行修改状态操作。
        public let aliasNames: [String]?
        
        public init (zoneId: String, paused: Bool, aliasNames: [String]?) {
            self.zoneId = zoneId
            self.paused = paused
            self.aliasNames = aliasNames
        }
        
        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case paused = "Paused"
            case aliasNames = "AliasNames"
        }
    }
    
    /// ModifyAliasDomainStatus返回参数结构体
    public struct ModifyAliasDomainStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
