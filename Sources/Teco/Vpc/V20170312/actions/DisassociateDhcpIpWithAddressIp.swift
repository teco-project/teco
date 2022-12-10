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

extension Vpc {
    /// DhcpIp解绑EIP
    ///
    /// 本接口（DisassociateDhcpIpWithAddressIp）用于将DhcpIp已绑定的弹性公网IP（EIP）解除绑定。<br />
    /// >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
    /// >
    @inlinable
    public func disassociateDhcpIpWithAddressIp(_ input: DisassociateDhcpIpWithAddressIpRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DisassociateDhcpIpWithAddressIpResponse > {
        self.client.execute(action: "DisassociateDhcpIpWithAddressIp", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// DhcpIp解绑EIP
    ///
    /// 本接口（DisassociateDhcpIpWithAddressIp）用于将DhcpIp已绑定的弹性公网IP（EIP）解除绑定。<br />
    /// >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
    /// >
    @inlinable
    public func disassociateDhcpIpWithAddressIp(_ input: DisassociateDhcpIpWithAddressIpRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateDhcpIpWithAddressIpResponse {
        try await self.client.execute(action: "DisassociateDhcpIpWithAddressIp", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DisassociateDhcpIpWithAddressIp请求参数结构体
    public struct DisassociateDhcpIpWithAddressIpRequest: TCRequestModel {
        /// `DhcpIp`唯一`ID`，形如：`dhcpip-9o233uri`。必须是已绑定`EIP`的`DhcpIp`。
        public let dhcpIpId: String
        
        public init (dhcpIpId: String) {
            self.dhcpIpId = dhcpIpId
        }
        
        enum CodingKeys: String, CodingKey {
            case dhcpIpId = "DhcpIpId"
        }
    }
    
    /// DisassociateDhcpIpWithAddressIp返回参数结构体
    public struct DisassociateDhcpIpWithAddressIpResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
