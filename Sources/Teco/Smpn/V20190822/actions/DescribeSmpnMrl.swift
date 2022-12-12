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

extension Smpn {
    /// DescribeSmpnMrl请求参数结构体
    public struct DescribeSmpnMrlRequest: TCRequestModel {
        /// 恶意标记等级请求内容
        public let requestData: MRLRequest
        
        /// 用于计费的资源ID
        public let resourceId: String
        
        public init (requestData: MRLRequest, resourceId: String) {
            self.requestData = requestData
            self.resourceId = resourceId
        }
        
        enum CodingKeys: String, CodingKey {
            case requestData = "RequestData"
            case resourceId = "ResourceId"
        }
    }
    
    /// DescribeSmpnMrl返回参数结构体
    public struct DescribeSmpnMrlResponse: TCResponseModel {
        /// 恶意标记等级回应内容
        public let responseData: MRLResponse
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case responseData = "ResponseData"
            case requestId = "RequestId"
        }
    }
    
    /// 恶意标记等级
    ///
    /// 查询号码恶意标记等级
    @inlinable
    public func describeSmpnMrl(_ input: DescribeSmpnMrlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSmpnMrlResponse > {
        self.client.execute(action: "DescribeSmpnMrl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 恶意标记等级
    ///
    /// 查询号码恶意标记等级
    @inlinable
    public func describeSmpnMrl(_ input: DescribeSmpnMrlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSmpnMrlResponse {
        try await self.client.execute(action: "DescribeSmpnMrl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
