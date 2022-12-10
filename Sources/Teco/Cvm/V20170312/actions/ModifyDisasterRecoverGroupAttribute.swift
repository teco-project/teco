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

extension Cvm {
    /// 修改分散置放群组属性
    ///
    /// 本接口 (ModifyDisasterRecoverGroupAttribute)用于修改[分散置放群组](https://cloud.tencent.com/document/product/213/15486)属性。
    @inlinable
    public func modifyDisasterRecoverGroupAttribute(_ input: ModifyDisasterRecoverGroupAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyDisasterRecoverGroupAttributeResponse > {
        self.client.execute(action: "ModifyDisasterRecoverGroupAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改分散置放群组属性
    ///
    /// 本接口 (ModifyDisasterRecoverGroupAttribute)用于修改[分散置放群组](https://cloud.tencent.com/document/product/213/15486)属性。
    @inlinable
    public func modifyDisasterRecoverGroupAttribute(_ input: ModifyDisasterRecoverGroupAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDisasterRecoverGroupAttributeResponse {
        try await self.client.execute(action: "ModifyDisasterRecoverGroupAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyDisasterRecoverGroupAttribute请求参数结构体
    public struct ModifyDisasterRecoverGroupAttributeRequest: TCRequestModel {
        /// 分散置放群组ID，可使用[DescribeDisasterRecoverGroups](https://cloud.tencent.com/document/api/213/17810)接口获取。
        public let disasterRecoverGroupId: String
        
        /// 分散置放群组名称，长度1-60个字符，支持中、英文。
        public let name: String
        
        public init (disasterRecoverGroupId: String, name: String) {
            self.disasterRecoverGroupId = disasterRecoverGroupId
            self.name = name
        }
        
        enum CodingKeys: String, CodingKey {
            case disasterRecoverGroupId = "DisasterRecoverGroupId"
            case name = "Name"
        }
    }
    
    /// ModifyDisasterRecoverGroupAttribute返回参数结构体
    public struct ModifyDisasterRecoverGroupAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}