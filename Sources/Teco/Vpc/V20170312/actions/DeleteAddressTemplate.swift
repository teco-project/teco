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
    /// 删除IP地址模板
    ///
    /// 本接口（DeleteAddressTemplate）用于删除IP地址模板
    @inlinable
    public func deleteAddressTemplate(_ input: DeleteAddressTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteAddressTemplateResponse > {
        self.client.execute(action: "DeleteAddressTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除IP地址模板
    ///
    /// 本接口（DeleteAddressTemplate）用于删除IP地址模板
    @inlinable
    public func deleteAddressTemplate(_ input: DeleteAddressTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAddressTemplateResponse {
        try await self.client.execute(action: "DeleteAddressTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteAddressTemplate请求参数结构体
    public struct DeleteAddressTemplateRequest: TCRequestModel {
        /// IP地址模板实例ID，例如：ipm-09o5m8kc。
        public let addressTemplateId: String
        
        public init (addressTemplateId: String) {
            self.addressTemplateId = addressTemplateId
        }
        
        enum CodingKeys: String, CodingKey {
            case addressTemplateId = "AddressTemplateId"
        }
    }
    
    /// DeleteAddressTemplate返回参数结构体
    public struct DeleteAddressTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}