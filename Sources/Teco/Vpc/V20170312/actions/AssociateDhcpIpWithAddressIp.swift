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
    /// DhcpIp绑定EIP
    ///
    /// 本接口（AssociateDhcpIpWithAddressIp）用于DhcpIp绑定弹性公网IP（EIP）。<br />
    /// >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
    /// >
    @inlinable
    public func associateDhcpIpWithAddressIp(_ input: AssociateDhcpIpWithAddressIpRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AssociateDhcpIpWithAddressIpResponse > {
        self.client.execute(action: "AssociateDhcpIpWithAddressIp", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// DhcpIp绑定EIP
    ///
    /// 本接口（AssociateDhcpIpWithAddressIp）用于DhcpIp绑定弹性公网IP（EIP）。<br />
    /// >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
    /// >
    @inlinable
    public func associateDhcpIpWithAddressIp(_ input: AssociateDhcpIpWithAddressIpRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateDhcpIpWithAddressIpResponse {
        try await self.client.execute(action: "AssociateDhcpIpWithAddressIp", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// AssociateDhcpIpWithAddressIp请求参数结构体
    public struct AssociateDhcpIpWithAddressIpRequest: TCRequestModel {
        /// `DhcpIp`唯一`ID`，形如：`dhcpip-9o233uri`。必须是没有绑定`EIP`的`DhcpIp`
        public let dhcpIpId: String
        
        /// 弹性公网`IP`。必须是没有绑定`DhcpIp`的`EIP`
        public let addressIp: String
        
        public init (dhcpIpId: String, addressIp: String) {
            self.dhcpIpId = dhcpIpId
            self.addressIp = addressIp
        }
        
        enum CodingKeys: String, CodingKey {
            case dhcpIpId = "DhcpIpId"
            case addressIp = "AddressIp"
        }
    }
    
    /// AssociateDhcpIpWithAddressIp返回参数结构体
    public struct AssociateDhcpIpWithAddressIpResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
