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
    /// DeleteDDoSBlackWhiteIpList请求参数结构体
    public struct DeleteDDoSBlackWhiteIpListRequest: TCRequestModel {
        /// 资源实例ID
        public let instanceId: String
        
        /// IP列表
        public let ipList: [IpSegment]
        
        /// IP类型，取值[black(黑名单IP), white(白名单IP)]
        public let type: String
        
        public init (instanceId: String, ipList: [IpSegment], type: String) {
            self.instanceId = instanceId
            self.ipList = ipList
            self.type = type
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case ipList = "IpList"
            case type = "Type"
        }
    }
    
    /// DeleteDDoSBlackWhiteIpList返回参数结构体
    public struct DeleteDDoSBlackWhiteIpListResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 删除DDoS防护的IP网段黑白名单
    @inlinable
    public func deleteDDoSBlackWhiteIpList(_ input: DeleteDDoSBlackWhiteIpListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteDDoSBlackWhiteIpListResponse > {
        self.client.execute(action: "DeleteDDoSBlackWhiteIpList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除DDoS防护的IP网段黑白名单
    @inlinable
    public func deleteDDoSBlackWhiteIpList(_ input: DeleteDDoSBlackWhiteIpListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDDoSBlackWhiteIpListResponse {
        try await self.client.execute(action: "DeleteDDoSBlackWhiteIpList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
