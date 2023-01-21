//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Tione {
    /// DescribeNotebookInstance请求参数结构体
    public struct DescribeNotebookInstanceRequest: TCRequestModel {
        /// Notebook实例名称
        /// 规则：“^\[a-zA-Z0-9\](-\*\[a-zA-Z0-9\])\*$”
        public let notebookInstanceName: String

        public init(notebookInstanceName: String) {
            self.notebookInstanceName = notebookInstanceName
        }

        enum CodingKeys: String, CodingKey {
            case notebookInstanceName = "NotebookInstanceName"
        }
    }

    /// DescribeNotebookInstance返回参数结构体
    public struct DescribeNotebookInstanceResponse: TCResponseModel {
        /// Notebook实例名称
        public let notebookInstanceName: String

        /// Notebook算力资源类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceType: String?

        /// 角色的资源描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let roleArn: String?

        /// 外网访问权限
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let directInternetAccess: String?

        /// Root用户权限
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rootAccess: String?

        /// 子网ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subnetId: String?

        /// 数据卷大小(GB)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let volumeSizeInGB: UInt64?

        /// 创建失败原因
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failureReason: String?

        /// Notebook实例创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var creationTime: Date?

        /// Notebook实例最近修改时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var lastModifiedTime: Date?

        /// Notebook实例日志链接
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let logUrl: String?

        /// Notebook实例状态
        /// Pending: 创建中
        /// Inservice: 运行中
        /// Stopping: 停止中
        /// Stopped: 已停止
        /// Failed: 失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let notebookInstanceStatus: String?

        /// Notebook实例ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceId: String?

        /// notebook生命周期脚本名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lifecycleScriptsName: String?

        /// 默认存储库名称
        /// 可以是已创建的存储库名称或者已https://开头的公共git库
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let defaultCodeRepository: String?

        /// 其他存储库列表
        /// 每个元素可以是已创建的存储库名称或者已https://开头的公共git库
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let additionalCodeRepositories: [String]?

        /// 是否开启CLS日志服务
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clsAccess: String?

        /// 是否预付费实例
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let prepay: Bool?

        /// 实例运行截止时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var deadline: Date?

        /// 自动停止配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let stoppingCondition: StoppingCondition?

        /// Cls配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clsConfig: ClsConfig?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case notebookInstanceName = "NotebookInstanceName"
            case instanceType = "InstanceType"
            case roleArn = "RoleArn"
            case directInternetAccess = "DirectInternetAccess"
            case rootAccess = "RootAccess"
            case subnetId = "SubnetId"
            case volumeSizeInGB = "VolumeSizeInGB"
            case failureReason = "FailureReason"
            case creationTime = "CreationTime"
            case lastModifiedTime = "LastModifiedTime"
            case logUrl = "LogUrl"
            case notebookInstanceStatus = "NotebookInstanceStatus"
            case instanceId = "InstanceId"
            case lifecycleScriptsName = "LifecycleScriptsName"
            case defaultCodeRepository = "DefaultCodeRepository"
            case additionalCodeRepositories = "AdditionalCodeRepositories"
            case clsAccess = "ClsAccess"
            case prepay = "Prepay"
            case deadline = "Deadline"
            case stoppingCondition = "StoppingCondition"
            case clsConfig = "ClsConfig"
            case requestId = "RequestId"
        }
    }

    /// 查询Notebook实例
    ///
    /// 查询Notebook实例详情
    @inlinable
    public func describeNotebookInstance(_ input: DescribeNotebookInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotebookInstanceResponse> {
        self.client.execute(action: "DescribeNotebookInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Notebook实例
    ///
    /// 查询Notebook实例详情
    @inlinable
    public func describeNotebookInstance(_ input: DescribeNotebookInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotebookInstanceResponse {
        try await self.client.execute(action: "DescribeNotebookInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Notebook实例
    ///
    /// 查询Notebook实例详情
    @inlinable
    public func describeNotebookInstance(notebookInstanceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotebookInstanceResponse> {
        self.describeNotebookInstance(DescribeNotebookInstanceRequest(notebookInstanceName: notebookInstanceName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Notebook实例
    ///
    /// 查询Notebook实例详情
    @inlinable
    public func describeNotebookInstance(notebookInstanceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotebookInstanceResponse {
        try await self.describeNotebookInstance(DescribeNotebookInstanceRequest(notebookInstanceName: notebookInstanceName), region: region, logger: logger, on: eventLoop)
    }
}
