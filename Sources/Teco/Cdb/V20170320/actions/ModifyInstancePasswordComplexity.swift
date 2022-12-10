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

extension Cdb {
    /// 修改实例密码复杂度
    ///
    /// 本接口(ModifyInstancePasswordComplexity)用于修改云数据库实例的密码复杂度。
    @inlinable
    public func modifyInstancePasswordComplexity(_ input: ModifyInstancePasswordComplexityRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyInstancePasswordComplexityResponse > {
        self.client.execute(action: "ModifyInstancePasswordComplexity", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改实例密码复杂度
    ///
    /// 本接口(ModifyInstancePasswordComplexity)用于修改云数据库实例的密码复杂度。
    @inlinable
    public func modifyInstancePasswordComplexity(_ input: ModifyInstancePasswordComplexityRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstancePasswordComplexityResponse {
        try await self.client.execute(action: "ModifyInstancePasswordComplexity", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyInstancePasswordComplexity请求参数结构体
    public struct ModifyInstancePasswordComplexityRequest: TCRequestModel {
        /// 实例短 ID 列表。
        public let instanceIds: [String]
        
        /// 要修改的参数列表。每一个元素是Name和CurrentValue的组合。Name是参数名，CurrentValue是要修改成的值。8.0版本Name支持范围：["validate_password.policy","validate_password.length","validate_password.mixed_case_count","validate_password.number_count","validate_password.special_char_count"],5.6和5.7版本支持范围：["validate_password_policy","validate_password_length","validate_password_mixed_case_count","validate_password_number_count","validate_password_special_char_count"]
        public let paramList: [Parameter]?
        
        public init (instanceIds: [String], paramList: [Parameter]?) {
            self.instanceIds = instanceIds
            self.paramList = paramList
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case paramList = "ParamList"
        }
    }
    
    /// ModifyInstancePasswordComplexity返回参数结构体
    public struct ModifyInstancePasswordComplexityResponse: TCResponseModel {
        /// 异步任务 ID，可用于查询任务进度。
        public let asyncRequestId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }
}
