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
    /// DescribeLivePushAuthKey请求参数结构体
    public struct DescribeLivePushAuthKeyRequest: TCRequestModel {
        /// 推流域名。
        public let domainName: String
        
        public init (domainName: String) {
            self.domainName = domainName
        }
        
        enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
        }
    }
    
    /// DescribeLivePushAuthKey返回参数结构体
    public struct DescribeLivePushAuthKeyResponse: TCResponseModel {
        /// 推流鉴权key信息。
        public let pushAuthKeyInfo: PushAuthKeyInfo
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case pushAuthKeyInfo = "PushAuthKeyInfo"
            case requestId = "RequestId"
        }
    }
    
    /// 查询推流鉴权key
    ///
    /// 查询直播推流鉴权key
    @inlinable
    public func describeLivePushAuthKey(_ input: DescribeLivePushAuthKeyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLivePushAuthKeyResponse > {
        self.client.execute(action: "DescribeLivePushAuthKey", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询推流鉴权key
    ///
    /// 查询直播推流鉴权key
    @inlinable
    public func describeLivePushAuthKey(_ input: DescribeLivePushAuthKeyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLivePushAuthKeyResponse {
        try await self.client.execute(action: "DescribeLivePushAuthKey", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
