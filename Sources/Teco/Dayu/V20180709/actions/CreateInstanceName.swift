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

extension Dayu {
    /// 资源实例重命名
    ///
    /// 资源实例重命名，支持独享包、共享包、高防IP、高防IP专业版；
    @inlinable
    public func createInstanceName(_ input: CreateInstanceNameRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateInstanceNameResponse > {
        self.client.execute(action: "CreateInstanceName", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 资源实例重命名
    ///
    /// 资源实例重命名，支持独享包、共享包、高防IP、高防IP专业版；
    @inlinable
    public func createInstanceName(_ input: CreateInstanceNameRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstanceNameResponse {
        try await self.client.execute(action: "CreateInstanceName", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateInstanceName请求参数结构体
    public struct CreateInstanceNameRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        public let business: String
        
        /// 资源ID
        public let id: String
        
        /// 资源实例名称，长度不超过32个字符
        public let name: String
        
        public init (business: String, id: String, name: String) {
            self.business = business
            self.id = id
            self.name = name
        }
        
        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case name = "Name"
        }
    }
    
    /// CreateInstanceName返回参数结构体
    public struct CreateInstanceNameResponse: TCResponseModel {
        /// 成功码
        public let success: SuccessCode
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }
}