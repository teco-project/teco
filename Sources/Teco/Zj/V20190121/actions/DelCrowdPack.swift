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

extension Zj {
    /// 删除人群包
    @inlinable
    public func delCrowdPack(_ input: DelCrowdPackRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DelCrowdPackResponse > {
        self.client.execute(action: "DelCrowdPack", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除人群包
    @inlinable
    public func delCrowdPack(_ input: DelCrowdPackRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DelCrowdPackResponse {
        try await self.client.execute(action: "DelCrowdPack", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DelCrowdPack请求参数结构体
    public struct DelCrowdPackRequest: TCRequestModel {
        /// 商户证书
        public let license: String
        
        /// 人群包id
        public let id: UInt64
        
        public init (license: String, id: UInt64) {
            self.license = license
            self.id = id
        }
        
        enum CodingKeys: String, CodingKey {
            case license = "License"
            case id = "ID"
        }
    }
    
    /// DelCrowdPack返回参数结构体
    public struct DelCrowdPackResponse: TCResponseModel {
        /// 接口返回
        public let data: SmsSuccessResponse
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}
