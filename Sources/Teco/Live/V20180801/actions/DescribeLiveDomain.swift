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

extension Live {
    /// 查询域名信息
    ///
    /// 查询直播域名信息。
    @inlinable
    public func describeLiveDomain(_ input: DescribeLiveDomainRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLiveDomainResponse > {
        self.client.execute(action: "DescribeLiveDomain", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询域名信息
    ///
    /// 查询直播域名信息。
    @inlinable
    public func describeLiveDomain(_ input: DescribeLiveDomainRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveDomainResponse {
        try await self.client.execute(action: "DescribeLiveDomain", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeLiveDomain请求参数结构体
    public struct DescribeLiveDomainRequest: TCRequestModel {
        /// 域名。
        public let domainName: String
        
        public init (domainName: String) {
            self.domainName = domainName
        }
        
        enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
        }
    }
    
    /// DescribeLiveDomain返回参数结构体
    public struct DescribeLiveDomainResponse: TCResponseModel {
        /// 域名信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domainInfo: DomainInfo
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case domainInfo = "DomainInfo"
            case requestId = "RequestId"
        }
    }
}