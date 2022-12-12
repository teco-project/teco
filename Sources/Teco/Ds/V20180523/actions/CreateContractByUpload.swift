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

extension Ds {
    /// CreateContractByUpload请求参数结构体
    public struct CreateContractByUploadRequest: TCRequestModel {
        /// 模块名ContractMng
        public let module: String
        
        /// 操作名CreateContractByUpload
        public let operation: String
        
        /// 签署人信息
        public let signInfos: [SignInfo]
        
        /// 合同上传链接地址
        public let contractFile: String
        
        /// 合同名称
        public let contractName: String
        
        /// 备注
        public let remarks: String?
        
        /// 合同发起方腾讯云帐号ID（由平台自动填写）
        public let initiator: String?
        
        /// 合同长时间未签署的过期时间
        public let expireTime: String?
        
        public init (module: String, operation: String, signInfos: [SignInfo], contractFile: String, contractName: String, remarks: String? = nil, initiator: String? = nil, expireTime: String? = nil) {
            self.module = module
            self.operation = operation
            self.signInfos = signInfos
            self.contractFile = contractFile
            self.contractName = contractName
            self.remarks = remarks
            self.initiator = initiator
            self.expireTime = expireTime
        }
        
        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case signInfos = "SignInfos"
            case contractFile = "ContractFile"
            case contractName = "ContractName"
            case remarks = "Remarks"
            case initiator = "Initiator"
            case expireTime = "ExpireTime"
        }
    }
    
    /// CreateContractByUpload返回参数结构体
    public struct CreateContractByUploadResponse: TCResponseModel {
        /// 任务ID
        public let taskId: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
    
    /// 通过上传创建合同
    ///
    /// 此接口适用于：客户平台通过上传PDF文件作为合同，以备未来进行签署。接口返回任务号，可调用DescribeTaskStatus接口查看任务执行结果。
    @inlinable
    public func createContractByUpload(_ input: CreateContractByUploadRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateContractByUploadResponse > {
        self.client.execute(action: "CreateContractByUpload", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 通过上传创建合同
    ///
    /// 此接口适用于：客户平台通过上传PDF文件作为合同，以备未来进行签署。接口返回任务号，可调用DescribeTaskStatus接口查看任务执行结果。
    @inlinable
    public func createContractByUpload(_ input: CreateContractByUploadRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateContractByUploadResponse {
        try await self.client.execute(action: "CreateContractByUpload", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
