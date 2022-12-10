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

extension Vpc {
    /// 修改弹性公网IP属性
    ///
    /// 本接口 (ModifyAddressAttribute) 用于修改[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）的名称。
    @inlinable
    public func modifyAddressAttribute(_ input: ModifyAddressAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyAddressAttributeResponse > {
        self.client.execute(action: "ModifyAddressAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改弹性公网IP属性
    ///
    /// 本接口 (ModifyAddressAttribute) 用于修改[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）的名称。
    @inlinable
    public func modifyAddressAttribute(_ input: ModifyAddressAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAddressAttributeResponse {
        try await self.client.execute(action: "ModifyAddressAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyAddressAttribute请求参数结构体
    public struct ModifyAddressAttributeRequest: TCRequestModel {
        /// 标识 EIP 的唯一 ID。EIP 唯一 ID 形如：`eip-11112222`。
        public let addressId: String
        
        /// 修改后的 EIP 名称。长度上限为20个字符。
        public let addressName: String?
        
        /// 设定EIP是否直通，"TRUE"表示直通，"FALSE"表示非直通。注意该参数仅对EIP直通功能可见的用户可以设定。
        public let eipDirectConnection: String?
        
        public init (addressId: String, addressName: String?, eipDirectConnection: String?) {
            self.addressId = addressId
            self.addressName = addressName
            self.eipDirectConnection = eipDirectConnection
        }
        
        enum CodingKeys: String, CodingKey {
            case addressId = "AddressId"
            case addressName = "AddressName"
            case eipDirectConnection = "EipDirectConnection"
        }
    }
    
    /// ModifyAddressAttribute返回参数结构体
    public struct ModifyAddressAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}