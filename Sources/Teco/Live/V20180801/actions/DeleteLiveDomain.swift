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

extension Live {
    /// 删除域名
    ///
    /// 删除已添加的直播域名
    @inlinable
    public func deleteLiveDomain(_ input: DeleteLiveDomainRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteLiveDomainResponse > {
        self.client.execute(action: "DeleteLiveDomain", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除域名
    ///
    /// 删除已添加的直播域名
    @inlinable
    public func deleteLiveDomain(_ input: DeleteLiveDomainRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLiveDomainResponse {
        try await self.client.execute(action: "DeleteLiveDomain", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteLiveDomain请求参数结构体
    public struct DeleteLiveDomainRequest: TCRequestModel {
        /// 要删除的域名
        public let domainName: String
        
        /// 类型。0-推流，1-播放
        public let domainType: UInt64
        
        public init (domainName: String, domainType: UInt64) {
            self.domainName = domainName
            self.domainType = domainType
        }
        
        enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
            case domainType = "DomainType"
        }
    }
    
    /// DeleteLiveDomain返回参数结构体
    public struct DeleteLiveDomainResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
