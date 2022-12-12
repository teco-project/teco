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

extension Antiddos {
    /// DescribeDDoSBlackWhiteIpList请求参数结构体
    public struct DescribeDDoSBlackWhiteIpListRequest: TCRequestModel {
        /// 资源实例ID
        public let instanceId: String
        
        public init (instanceId: String) {
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }
    
    /// DescribeDDoSBlackWhiteIpList返回参数结构体
    public struct DescribeDDoSBlackWhiteIpListResponse: TCResponseModel {
        /// 黑名单IP列表
        public let blackIpList: [IpSegment]
        
        /// 白名单IP列表
        public let whiteIpList: [IpSegment]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case blackIpList = "BlackIpList"
            case whiteIpList = "WhiteIpList"
            case requestId = "RequestId"
        }
    }
    
    /// 获取DDoS防护的IP网段黑白名单
    @inlinable
    public func describeDDoSBlackWhiteIpList(_ input: DescribeDDoSBlackWhiteIpListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDDoSBlackWhiteIpListResponse > {
        self.client.execute(action: "DescribeDDoSBlackWhiteIpList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取DDoS防护的IP网段黑白名单
    @inlinable
    public func describeDDoSBlackWhiteIpList(_ input: DescribeDDoSBlackWhiteIpListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSBlackWhiteIpListResponse {
        try await self.client.execute(action: "DescribeDDoSBlackWhiteIpList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
