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

extension Cvm {
    /// ResetInstance请求参数结构体
    public struct ResetInstanceRequest: TCRequestModel {
        /// 实例ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) API返回值中的`InstanceId`获取。
        public let instanceId: String

        /// 指定有效的[镜像](https://cloud.tencent.com/document/product/213/4940)ID，格式形如`img-xxx`。镜像类型分为四种：<br/><li>公共镜像</li><li>自定义镜像</li><li>共享镜像</li><li>服务市场镜像</li><br/>可通过以下方式获取可用的镜像ID：<br/><li>`公共镜像`、`自定义镜像`、`共享镜像`的镜像ID可通过登录[控制台](https://console.cloud.tencent.com/cvm/image?rid=1&imageType=PUBLIC_IMAGE)查询；`服务镜像市场`的镜像ID可通过[云市场](https://market.cloud.tencent.com/list)查询。</li><li>通过调用接口 [DescribeImages](https://cloud.tencent.com/document/api/213/15715) ，取返回信息中的`ImageId`字段。</li>
        /// <br>默认取值：默认使用当前镜像。
        public let imageId: String?

        /// 实例系统盘配置信息。系统盘为云盘的实例可以通过该参数指定重装后的系统盘大小来实现对系统盘的扩容操作。系统盘大小只支持扩容不支持缩容；重装只支持修改系统盘的大小，不能修改系统盘的类型。
        public let systemDisk: SystemDisk?

        /// 实例登录设置。通过该参数可以设置实例的登录方式密码、密钥或保持镜像的原始登录设置。默认情况下会随机生成密码，并以站内信方式知会到用户。
        public let loginSettings: LoginSettings?

        /// 增强服务。通过该参数可以指定是否开启云安全、云监控等服务。若不指定该参数，则默认开启云监控、云安全服务。
        public let enhancedService: EnhancedService?

        /// 重装系统时，可以指定修改实例的主机名。<br><li>点号（.）和短横线（-）不能作为 HostName 的首尾字符，不能连续使用。<br><li>Windows 实例：名字符长度为[2, 15]，允许字母（不限制大小写）、数字和短横线（-）组成，不支持点号（.），不能全是数字。<br><li>其他类型（Linux 等）实例：字符长度为[2, 60]，允许支持多个点号，点之间为一段，每段允许字母（不限制大小写）、数字和短横线（-）组成。
        public let hostName: String?

        /// 提供给实例使用的用户数据，需要以 base64 方式编码，支持的最大数据大小为 16KB。关于获取此参数的详细介绍，请参阅[Windows](https://cloud.tencent.com/document/product/213/17526)和[Linux](https://cloud.tencent.com/document/product/213/17525)启动时运行命令。
        public let userData: String?

        public init(instanceId: String, imageId: String? = nil, systemDisk: SystemDisk? = nil, loginSettings: LoginSettings? = nil, enhancedService: EnhancedService? = nil, hostName: String? = nil, userData: String? = nil) {
            self.instanceId = instanceId
            self.imageId = imageId
            self.systemDisk = systemDisk
            self.loginSettings = loginSettings
            self.enhancedService = enhancedService
            self.hostName = hostName
            self.userData = userData
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case imageId = "ImageId"
            case systemDisk = "SystemDisk"
            case loginSettings = "LoginSettings"
            case enhancedService = "EnhancedService"
            case hostName = "HostName"
            case userData = "UserData"
        }
    }

    /// ResetInstance返回参数结构体
    public struct ResetInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重装实例
    ///
    /// 本接口 (ResetInstance) 用于重装指定实例上的操作系统。
    ///
    /// * 如果指定了`ImageId`参数，则使用指定的镜像重装；否则按照当前实例使用的镜像进行重装。
    /// * 系统盘将会被格式化，并重置；请确保系统盘中无重要文件。
    /// * `Linux`和`Windows`系统互相切换时，该实例系统盘`ID`将发生变化，系统盘关联快照将无法回滚、恢复数据。
    /// * 密码不指定将会通过站内信下发随机密码。
    /// * 目前只支持[系统盘类型](https://cloud.tencent.com/document/api/213/9452#SystemDisk)是`CLOUD_BASIC`、`CLOUD_PREMIUM`、`CLOUD_SSD`类型的实例使用该接口实现`Linux`和`Windows`操作系统切换。
    /// * 目前不支持境外地域的实例使用该接口实现`Linux`和`Windows`操作系统切换。
    /// * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func resetInstance(_ input: ResetInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetInstanceResponse> {
        self.client.execute(action: "ResetInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重装实例
    ///
    /// 本接口 (ResetInstance) 用于重装指定实例上的操作系统。
    ///
    /// * 如果指定了`ImageId`参数，则使用指定的镜像重装；否则按照当前实例使用的镜像进行重装。
    /// * 系统盘将会被格式化，并重置；请确保系统盘中无重要文件。
    /// * `Linux`和`Windows`系统互相切换时，该实例系统盘`ID`将发生变化，系统盘关联快照将无法回滚、恢复数据。
    /// * 密码不指定将会通过站内信下发随机密码。
    /// * 目前只支持[系统盘类型](https://cloud.tencent.com/document/api/213/9452#SystemDisk)是`CLOUD_BASIC`、`CLOUD_PREMIUM`、`CLOUD_SSD`类型的实例使用该接口实现`Linux`和`Windows`操作系统切换。
    /// * 目前不支持境外地域的实例使用该接口实现`Linux`和`Windows`操作系统切换。
    /// * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func resetInstance(_ input: ResetInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetInstanceResponse {
        try await self.client.execute(action: "ResetInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重装实例
    ///
    /// 本接口 (ResetInstance) 用于重装指定实例上的操作系统。
    ///
    /// * 如果指定了`ImageId`参数，则使用指定的镜像重装；否则按照当前实例使用的镜像进行重装。
    /// * 系统盘将会被格式化，并重置；请确保系统盘中无重要文件。
    /// * `Linux`和`Windows`系统互相切换时，该实例系统盘`ID`将发生变化，系统盘关联快照将无法回滚、恢复数据。
    /// * 密码不指定将会通过站内信下发随机密码。
    /// * 目前只支持[系统盘类型](https://cloud.tencent.com/document/api/213/9452#SystemDisk)是`CLOUD_BASIC`、`CLOUD_PREMIUM`、`CLOUD_SSD`类型的实例使用该接口实现`Linux`和`Windows`操作系统切换。
    /// * 目前不支持境外地域的实例使用该接口实现`Linux`和`Windows`操作系统切换。
    /// * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func resetInstance(instanceId: String, imageId: String? = nil, systemDisk: SystemDisk? = nil, loginSettings: LoginSettings? = nil, enhancedService: EnhancedService? = nil, hostName: String? = nil, userData: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetInstanceResponse> {
        self.resetInstance(.init(instanceId: instanceId, imageId: imageId, systemDisk: systemDisk, loginSettings: loginSettings, enhancedService: enhancedService, hostName: hostName, userData: userData), region: region, logger: logger, on: eventLoop)
    }

    /// 重装实例
    ///
    /// 本接口 (ResetInstance) 用于重装指定实例上的操作系统。
    ///
    /// * 如果指定了`ImageId`参数，则使用指定的镜像重装；否则按照当前实例使用的镜像进行重装。
    /// * 系统盘将会被格式化，并重置；请确保系统盘中无重要文件。
    /// * `Linux`和`Windows`系统互相切换时，该实例系统盘`ID`将发生变化，系统盘关联快照将无法回滚、恢复数据。
    /// * 密码不指定将会通过站内信下发随机密码。
    /// * 目前只支持[系统盘类型](https://cloud.tencent.com/document/api/213/9452#SystemDisk)是`CLOUD_BASIC`、`CLOUD_PREMIUM`、`CLOUD_SSD`类型的实例使用该接口实现`Linux`和`Windows`操作系统切换。
    /// * 目前不支持境外地域的实例使用该接口实现`Linux`和`Windows`操作系统切换。
    /// * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func resetInstance(instanceId: String, imageId: String? = nil, systemDisk: SystemDisk? = nil, loginSettings: LoginSettings? = nil, enhancedService: EnhancedService? = nil, hostName: String? = nil, userData: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetInstanceResponse {
        try await self.resetInstance(.init(instanceId: instanceId, imageId: imageId, systemDisk: systemDisk, loginSettings: loginSettings, enhancedService: enhancedService, hostName: hostName, userData: userData), region: region, logger: logger, on: eventLoop)
    }
}
