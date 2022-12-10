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

extension Bmvpc {
    /// 退还虚拟IP
    ///
    /// 退还虚拟IP。此接口只能退还虚拟IP，物理机IP不能退还。
    @inlinable
    public func deleteVirtualIp(_ input: DeleteVirtualIpRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteVirtualIpResponse > {
        self.client.execute(action: "DeleteVirtualIp", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 退还虚拟IP
    ///
    /// 退还虚拟IP。此接口只能退还虚拟IP，物理机IP不能退还。
    @inlinable
    public func deleteVirtualIp(_ input: DeleteVirtualIpRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVirtualIpResponse {
        try await self.client.execute(action: "DeleteVirtualIp", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteVirtualIp请求参数结构体
    public struct DeleteVirtualIpRequest: TCRequestModel {
        /// 私有网络唯一ID。
        public let vpcId: String
        
        /// 退还的IP列表。
        public let ips: [String]
        
        public init (vpcId: String, ips: [String]) {
            self.vpcId = vpcId
            self.ips = ips
        }
        
        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case ips = "Ips"
        }
    }
    
    /// DeleteVirtualIp返回参数结构体
    public struct DeleteVirtualIpResponse: TCResponseModel {
        /// 异步任务ID。
        public let taskId: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
}