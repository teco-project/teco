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

import TecoCore

/// Service error type returned by `Tbaas`.
public protocol TCTbaasErrorType: TCServiceErrorType {
    /// Get the service error as ``TCTbaasError``.
    ///
    /// - Returns: ``TCTbaasError`` that holds the same error code and context.
    func asTbaasError() -> TCTbaasError
}

public struct TCTbaasError: TCTbaasErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case failedOperation_BaaSStopServing = "FailedOperation.BaaSStopServing"
        case failedOperation_BcosService = "FailedOperation.BcosService"
        case failedOperation_CaCheckCsr = "FailedOperation.CaCheckCsr"
        case failedOperation_CaDbOption = "FailedOperation.CaDbOption"
        case failedOperation_CaExsit = "FailedOperation.CaExsit"
        case failedOperation_CaGenkey = "FailedOperation.CaGenkey"
        case failedOperation_CaInit = "FailedOperation.CaInit"
        case failedOperation_CaInputParam = "FailedOperation.CaInputParam"
        case failedOperation_CaNoExist = "FailedOperation.CaNoExist"
        case failedOperation_CaRevoke = "FailedOperation.CaRevoke"
        case failedOperation_CaRootNonExist = "FailedOperation.CaRootNonExist"
        case failedOperation_CaService = "FailedOperation.CaService"
        case failedOperation_CaSignCert = "FailedOperation.CaSignCert"
        case failedOperation_CaYunApiApplyCert = "FailedOperation.CaYunApiApplyCert"
        case failedOperation_CaYunApiCommon = "FailedOperation.CaYunApiCommon"
        case failedOperation_ChainCodeChannel = "FailedOperation.ChainCodeChannel"
        case failedOperation_ChainCodeExist = "FailedOperation.ChainCodeExist"
        case failedOperation_ChainCodeInit = "FailedOperation.ChainCodeInit"
        case failedOperation_ChainCodeInstall = "FailedOperation.ChainCodeInstall"
        case failedOperation_CompileDeployedContract = "FailedOperation.CompileDeployedContract"
        case failedOperation_CompileDeployingContract = "FailedOperation.CompileDeployingContract"
        case failedOperation_ContractEditedByOtherAgency = "FailedOperation.ContractEditedByOtherAgency"
        case failedOperation_DatabaseException = "FailedOperation.DatabaseException"
        case failedOperation_DeleteDeployedContract = "FailedOperation.DeleteDeployedContract"
        case failedOperation_DeleteDeployingContract = "FailedOperation.DeleteDeployingContract"
        case failedOperation_DeployContractNotCompile = "FailedOperation.DeployContractNotCompile"
        case failedOperation_FabricBlockDetail = "FailedOperation.FabricBlockDetail"
        case failedOperation_FabricBlockQuery = "FailedOperation.FabricBlockQuery"
        case failedOperation_FabricCommit = "FailedOperation.FabricCommit"
        case failedOperation_FabricEventHub = "FailedOperation.FabricEventHub"
        case failedOperation_FabricManage = "FailedOperation.FabricManage"
        case failedOperation_FabricProposal = "FailedOperation.FabricProposal"
        case failedOperation_FabricRequestParams = "FailedOperation.FabricRequestParams"
        case failedOperation_FabricRequstParams = "FailedOperation.FabricRequstParams"
        case failedOperation_FabricTransactionDetail = "FailedOperation.FabricTransactionDetail"
        case failedOperation_FabricTransactionQuery = "FailedOperation.FabricTransactionQuery"
        case failedOperation_FabricTxIdQuery = "FailedOperation.FabricTxIdQuery"
        case failedOperation_FabricTxInvoke = "FailedOperation.FabricTxInvoke"
        case failedOperation_FabricTxQuery = "FailedOperation.FabricTxQuery"
        case failedOperation_FabricTxQueryNone = "FailedOperation.FabricTxQueryNone"
        case failedOperation_FrontRequestFail = "FailedOperation.FrontRequestFail"
        case failedOperation_GroupIllegal = "FailedOperation.GroupIllegal"
        case failedOperation_InvalidChaincode = "FailedOperation.InvalidChaincode"
        case failedOperation_InvalidChannel = "FailedOperation.InvalidChannel"
        case failedOperation_InvalidCluster = "FailedOperation.InvalidCluster"
        case failedOperation_InvalidGroup = "FailedOperation.InvalidGroup"
        case failedOperation_InvalidGroupPk = "FailedOperation.InvalidGroupPk"
        case failedOperation_InvalidKeyUser = "FailedOperation.InvalidKeyUser"
        case failedOperation_InvalidOperation = "FailedOperation.InvalidOperation"
        case failedOperation_InvalidPeer = "FailedOperation.InvalidPeer"
        case failedOperation_InvalidResource = "FailedOperation.InvalidResource"
        case failedOperation_ManageService = "FailedOperation.ManageService"
        case failedOperation_NewContract = "FailedOperation.NewContract"
        case failedOperation_NoChainCodeChannel = "FailedOperation.NoChainCodeChannel"
        case failedOperation_NoChainCodeGroup = "FailedOperation.NoChainCodeGroup"
        case failedOperation_NoChainCodePeer = "FailedOperation.NoChainCodePeer"
        case failedOperation_NoChannelGroup = "FailedOperation.NoChannelGroup"
        case failedOperation_NoChannelPeer = "FailedOperation.NoChannelPeer"
        case failedOperation_NoObject = "FailedOperation.NoObject"
        case failedOperation_NoPeer = "FailedOperation.NoPeer"
        case failedOperation_NotDeployedContract = "FailedOperation.NotDeployedContract"
        case failedOperation_ServiceFailed = "FailedOperation.ServiceFailed"
        case failedOperation_StatusNoMatch = "FailedOperation.StatusNoMatch"
        case failedOperation_TimeOutUrl = "FailedOperation.TimeOutUrl"
        case failedOperation_TransactionTimeout = "FailedOperation.TransactionTimeout"
        case failedOperation_UpdateDeployedContract = "FailedOperation.UpdateDeployedContract"
        case failedOperation_UserAuthType = "FailedOperation.UserAuthType"
        case failedOperation_UserInBlackList = "FailedOperation.UserInBlackList"
        case failedOperation_UserNoJoinDemoCluster = "FailedOperation.UserNoJoinDemoCluster"
        case internalError_DBError = "InternalError.DBError"
        case internalError_FailPreform = "InternalError.FailPreform"
        case internalError_FailUrl = "InternalError.FailUrl"
        case internalError_FlaskException = "InternalError.FlaskException"
        case internalError_InvalidContractParam = "InternalError.InvalidContractParam"
        case internalError_MethodTypeNotSupport = "InternalError.MethodTypeNotSupport"
        case internalError_NoDefineError = "InternalError.NoDefineError"
        case internalError_ServerError = "InternalError.ServerError"
        case internalError_ServerException = "InternalError.ServerException"
        case internalError_ServiceError = "InternalError.ServiceError"
        case internalError_ServicePanic = "InternalError.ServicePanic"
        case internalError_TransactionService = "InternalError.TransactionService"
        case internalError_UnknownError = "InternalError.UnknownError"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_IllegalFormat = "InvalidParameterValue.IllegalFormat"
        case invalidParameterValue_IllegalValue = "InvalidParameterValue.IllegalValue"
        case invalidParameterValue_ParameterEmpty = "InvalidParameterValue.ParameterEmpty"
        case invalidParameter_AccountParamError = "InvalidParameter.AccountParamError"
        case invalidParameter_AgencyInvalid = "InvalidParameter.AgencyInvalid"
        case invalidParameter_AgencyNetParamInvalid = "InvalidParameter.AgencyNetParamInvalid"
        case invalidParameter_AllianceIdOfNetEmpty = "InvalidParameter.AllianceIdOfNetEmpty"
        case invalidParameter_ContractIdInvalid = "InvalidParameter.ContractIdInvalid"
        case invalidParameter_DataHadExist = "InvalidParameter.DataHadExist"
        case invalidParameter_EmptyParam = "InvalidParameter.EmptyParam"
        case invalidParameter_ExpireTimeInvalid = "InvalidParameter.ExpireTimeInvalid"
        case invalidParameter_FrontConnFail = "InvalidParameter.FrontConnFail"
        case invalidParameter_FrontIpInvalid = "InvalidParameter.FrontIpInvalid"
        case invalidParameter_FrontParamError = "InvalidParameter.FrontParamError"
        case invalidParameter_FrontRequestFail = "InvalidParameter.FrontRequestFail"
        case invalidParameter_InputDataViolation = "InvalidParameter.InputDataViolation"
        case invalidParameter_InvalidContractArg = "InvalidParameter.InvalidContractArg"
        case invalidParameter_NetIdInvalid = "InvalidParameter.NetIdInvalid"
        case invalidParameter_NetParamError = "InvalidParameter.NetParamError"
        case invalidParameter_NewKeyUserParamError = "InvalidParameter.NewKeyUserParamError"
        case invalidParameter_NoInfoToDelete = "InvalidParameter.NoInfoToDelete"
        case invalidParameter_NotFoundValidFront = "InvalidParameter.NotFoundValidFront"
        case invalidParameter_ReDeployedContract = "InvalidParameter.ReDeployedContract"
        case invalidParameter_ReDeployingContract = "InvalidParameter.ReDeployingContract"
        case invalidParameter_RoleInvalid = "InvalidParameter.RoleInvalid"
        case missingParameter_EmptyParam = "MissingParameter.EmptyParam"
        case operationDenied_NotOwner = "OperationDenied.NotOwner"
        case resourceNotFound_EmptyData = "ResourceNotFound.EmptyData"
    }

    /// Error domains affliated to ``TCTbaasError``.
    public static var domains: [TCErrorType.Type] {
        [
            AuthFailure.self,
            FailedOperation.self,
            InternalError.self,
            InvalidParameter.self,
            InvalidParameterValue.self,
            MissingParameter.self,
            OperationDenied.self,
            ResourceNotFound.self
        ]
    }

    private let error: Code

    public let context: TCErrorContext?

    public var errorCode: String {
        self.error.rawValue
    }

    /// Initializer used by ``TCClient`` to match an error of this type.
    public init?(errorCode: String, context: TCErrorContext) {
        guard let error = Code(rawValue: errorCode) else {
            return nil
        }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code, context: TCErrorContext? = nil) {
        self.error = error
        self.context = context
    }

    /// CAM签名/鉴权错误。
    public static var authFailure: TCTbaasError {
        TCTbaasError(.authFailure)
    }

    /// 用户无权限访问。
    ///
    /// 用户需要在主账号配置当前子账号/协作者账号的接口和资源的访问权限
    public static var authFailure_UnauthorizedOperation: TCTbaasError {
        TCTbaasError(.authFailure_UnauthorizedOperation)
    }

    /// 为带来更好的服务与体验，长安链体验网络维护升级中，请稍后再试。
    public static var failedOperation_BaaSStopServing: TCTbaasError {
        TCTbaasError(.failedOperation_BaaSStopServing)
    }

    /// Bcos网络异常。
    public static var failedOperation_BcosService: TCTbaasError {
        TCTbaasError(.failedOperation_BcosService)
    }

    /// 检查CSR文件非法。
    public static var failedOperation_CaCheckCsr: TCTbaasError {
        TCTbaasError(.failedOperation_CaCheckCsr)
    }

    /// 数据库操作错误。
    public static var failedOperation_CaDbOption: TCTbaasError {
        TCTbaasError(.failedOperation_CaDbOption)
    }

    /// 证书已经存在。
    public static var failedOperation_CaExsit: TCTbaasError {
        TCTbaasError(.failedOperation_CaExsit)
    }

    /// 产生密钥对失败。
    public static var failedOperation_CaGenkey: TCTbaasError {
        TCTbaasError(.failedOperation_CaGenkey)
    }

    /// 初始化CA失败。
    public static var failedOperation_CaInit: TCTbaasError {
        TCTbaasError(.failedOperation_CaInit)
    }

    /// 输入参数非法。
    public static var failedOperation_CaInputParam: TCTbaasError {
        TCTbaasError(.failedOperation_CaInputParam)
    }

    /// 证书不存在。
    public static var failedOperation_CaNoExist: TCTbaasError {
        TCTbaasError(.failedOperation_CaNoExist)
    }

    /// 注销证书失败。
    public static var failedOperation_CaRevoke: TCTbaasError {
        TCTbaasError(.failedOperation_CaRevoke)
    }

    /// 根证书不存在。
    public static var failedOperation_CaRootNonExist: TCTbaasError {
        TCTbaasError(.failedOperation_CaRootNonExist)
    }

    /// CA内部错误。
    public static var failedOperation_CaService: TCTbaasError {
        TCTbaasError(.failedOperation_CaService)
    }

    /// 签发证书失败。
    public static var failedOperation_CaSignCert: TCTbaasError {
        TCTbaasError(.failedOperation_CaSignCert)
    }

    /// CFCA云API申请证书失败。
    public static var failedOperation_CaYunApiApplyCert: TCTbaasError {
        TCTbaasError(.failedOperation_CaYunApiApplyCert)
    }

    /// CFCA云API错误。
    public static var failedOperation_CaYunApiCommon: TCTbaasError {
        TCTbaasError(.failedOperation_CaYunApiCommon)
    }

    /// 合约已在通道实例化。
    public static var failedOperation_ChainCodeChannel: TCTbaasError {
        TCTbaasError(.failedOperation_ChainCodeChannel)
    }

    /// 合约已存在。
    public static var failedOperation_ChainCodeExist: TCTbaasError {
        TCTbaasError(.failedOperation_ChainCodeExist)
    }

    /// 合约实例化错误。
    public static var failedOperation_ChainCodeInit: TCTbaasError {
        TCTbaasError(.failedOperation_ChainCodeInit)
    }

    /// 合约安装错误。
    public static var failedOperation_ChainCodeInstall: TCTbaasError {
        TCTbaasError(.failedOperation_ChainCodeInstall)
    }

    /// Bcos不能编译已经部署的合约。
    public static var failedOperation_CompileDeployedContract: TCTbaasError {
        TCTbaasError(.failedOperation_CompileDeployedContract)
    }

    /// Bcos不能编译正在部署的合约。
    public static var failedOperation_CompileDeployingContract: TCTbaasError {
        TCTbaasError(.failedOperation_CompileDeployingContract)
    }

    /// Bcos只能由该合约所属机构执行操作。
    public static var failedOperation_ContractEditedByOtherAgency: TCTbaasError {
        TCTbaasError(.failedOperation_ContractEditedByOtherAgency)
    }

    /// 数据库操作异常。
    public static var failedOperation_DatabaseException: TCTbaasError {
        TCTbaasError(.failedOperation_DatabaseException)
    }

    /// Bcos合约已部署，无法删除。
    public static var failedOperation_DeleteDeployedContract: TCTbaasError {
        TCTbaasError(.failedOperation_DeleteDeployedContract)
    }

    /// Bcos合约正在部署，无法删除。
    public static var failedOperation_DeleteDeployingContract: TCTbaasError {
        TCTbaasError(.failedOperation_DeleteDeployingContract)
    }

    /// Bcos不能部署未编译的合约。
    public static var failedOperation_DeployContractNotCompile: TCTbaasError {
        TCTbaasError(.failedOperation_DeployContractNotCompile)
    }

    /// 区块详情查询失败。
    public static var failedOperation_FabricBlockDetail: TCTbaasError {
        TCTbaasError(.failedOperation_FabricBlockDetail)
    }

    /// 区块列表查询失败。
    public static var failedOperation_FabricBlockQuery: TCTbaasError {
        TCTbaasError(.failedOperation_FabricBlockQuery)
    }

    /// 提交失败。
    public static var failedOperation_FabricCommit: TCTbaasError {
        TCTbaasError(.failedOperation_FabricCommit)
    }

    /// event hub失败。
    public static var failedOperation_FabricEventHub: TCTbaasError {
        TCTbaasError(.failedOperation_FabricEventHub)
    }

    /// 区块链网络请求异常。
    public static var failedOperation_FabricManage: TCTbaasError {
        TCTbaasError(.failedOperation_FabricManage)
    }

    /// 背书失败。
    public static var failedOperation_FabricProposal: TCTbaasError {
        TCTbaasError(.failedOperation_FabricProposal)
    }

    /// fabric请求参数错误。
    public static var failedOperation_FabricRequestParams: TCTbaasError {
        TCTbaasError(.failedOperation_FabricRequestParams)
    }

    /// 参数验证失败。
    public static var failedOperation_FabricRequstParams: TCTbaasError {
        TCTbaasError(.failedOperation_FabricRequstParams)
    }

    /// 交易详情查询失败。
    public static var failedOperation_FabricTransactionDetail: TCTbaasError {
        TCTbaasError(.failedOperation_FabricTransactionDetail)
    }

    /// 交易列表查询失败。
    public static var failedOperation_FabricTransactionQuery: TCTbaasError {
        TCTbaasError(.failedOperation_FabricTransactionQuery)
    }

    /// Txid 查询失败。
    public static var failedOperation_FabricTxIdQuery: TCTbaasError {
        TCTbaasError(.failedOperation_FabricTxIdQuery)
    }

    /// fabric invoke交易错误。
    public static var failedOperation_FabricTxInvoke: TCTbaasError {
        TCTbaasError(.failedOperation_FabricTxInvoke)
    }

    /// fabric query交易错误。
    public static var failedOperation_FabricTxQuery: TCTbaasError {
        TCTbaasError(.failedOperation_FabricTxQuery)
    }

    /// fabric query交易错误, 无正确。
    public static var failedOperation_FabricTxQueryNone: TCTbaasError {
        TCTbaasError(.failedOperation_FabricTxQueryNone)
    }

    /// Bcos前置服务调用失败。
    public static var failedOperation_FrontRequestFail: TCTbaasError {
        TCTbaasError(.failedOperation_FrontRequestFail)
    }

    /// 用户非法操作。
    public static var failedOperation_GroupIllegal: TCTbaasError {
        TCTbaasError(.failedOperation_GroupIllegal)
    }

    /// 无效合约。
    public static var failedOperation_InvalidChaincode: TCTbaasError {
        TCTbaasError(.failedOperation_InvalidChaincode)
    }

    /// 无效通道。
    public static var failedOperation_InvalidChannel: TCTbaasError {
        TCTbaasError(.failedOperation_InvalidChannel)
    }

    /// 无效网络。
    public static var failedOperation_InvalidCluster: TCTbaasError {
        TCTbaasError(.failedOperation_InvalidCluster)
    }

    /// 无效组织。
    public static var failedOperation_InvalidGroup: TCTbaasError {
        TCTbaasError(.failedOperation_InvalidGroup)
    }

    /// Bcos无效的群组编号。
    public static var failedOperation_InvalidGroupPk: TCTbaasError {
        TCTbaasError(.failedOperation_InvalidGroupPk)
    }

    /// Bcos无效的私钥用户信息。
    public static var failedOperation_InvalidKeyUser: TCTbaasError {
        TCTbaasError(.failedOperation_InvalidKeyUser)
    }

    /// 无效操作。
    public static var failedOperation_InvalidOperation: TCTbaasError {
        TCTbaasError(.failedOperation_InvalidOperation)
    }

    /// 无效节点。
    public static var failedOperation_InvalidPeer: TCTbaasError {
        TCTbaasError(.failedOperation_InvalidPeer)
    }

    /// 无效资源。
    public static var failedOperation_InvalidResource: TCTbaasError {
        TCTbaasError(.failedOperation_InvalidResource)
    }

    /// 交易请求异常。
    ///
    /// ManageService service internal error, please try again later or contact with us.
    public static var failedOperation_ManageService: TCTbaasError {
        TCTbaasError(.failedOperation_ManageService)
    }

    /// Bcos新建合约失败。
    public static var failedOperation_NewContract: TCTbaasError {
        TCTbaasError(.failedOperation_NewContract)
    }

    /// 合约没有在通道初始化。
    public static var failedOperation_NoChainCodeChannel: TCTbaasError {
        TCTbaasError(.failedOperation_NoChainCodeChannel)
    }

    /// 组织没有加入合约。
    public static var failedOperation_NoChainCodeGroup: TCTbaasError {
        TCTbaasError(.failedOperation_NoChainCodeGroup)
    }

    /// 合约没有在节点安装。
    public static var failedOperation_NoChainCodePeer: TCTbaasError {
        TCTbaasError(.failedOperation_NoChainCodePeer)
    }

    /// 组织没有加入通道。
    public static var failedOperation_NoChannelGroup: TCTbaasError {
        TCTbaasError(.failedOperation_NoChannelGroup)
    }

    /// 节点没有加入通道。
    public static var failedOperation_NoChannelPeer: TCTbaasError {
        TCTbaasError(.failedOperation_NoChannelPeer)
    }

    /// 对象不存在。
    public static var failedOperation_NoObject: TCTbaasError {
        TCTbaasError(.failedOperation_NoObject)
    }

    /// 没有可用节点。
    public static var failedOperation_NoPeer: TCTbaasError {
        TCTbaasError(.failedOperation_NoPeer)
    }

    /// Bcos合约未部署。
    public static var failedOperation_NotDeployedContract: TCTbaasError {
        TCTbaasError(.failedOperation_NotDeployedContract)
    }

    /// 服务调用失败，请检查参数。
    public static var failedOperation_ServiceFailed: TCTbaasError {
        TCTbaasError(.failedOperation_ServiceFailed)
    }

    /// 操作状态不匹配。
    public static var failedOperation_StatusNoMatch: TCTbaasError {
        TCTbaasError(.failedOperation_StatusNoMatch)
    }

    /// 后台服务请求超时。
    public static var failedOperation_TimeOutUrl: TCTbaasError {
        TCTbaasError(.failedOperation_TimeOutUrl)
    }

    /// 交易执行超时，请稍后再试。
    public static var failedOperation_TransactionTimeout: TCTbaasError {
        TCTbaasError(.failedOperation_TransactionTimeout)
    }

    /// Bcos更新已部署合约。
    public static var failedOperation_UpdateDeployedContract: TCTbaasError {
        TCTbaasError(.failedOperation_UpdateDeployedContract)
    }

    /// 获取用户认证类型出错。
    public static var failedOperation_UserAuthType: TCTbaasError {
        TCTbaasError(.failedOperation_UserAuthType)
    }

    /// 您因违反用户协议，目前无法使用长安链体验网络。
    public static var failedOperation_UserInBlackList: TCTbaasError {
        TCTbaasError(.failedOperation_UserInBlackList)
    }

    /// 用户未加入体验网络。
    public static var failedOperation_UserNoJoinDemoCluster: TCTbaasError {
        TCTbaasError(.failedOperation_UserNoJoinDemoCluster)
    }

    /// Bcos数据库操作异常，请重试。
    public static var internalError_DBError: TCTbaasError {
        TCTbaasError(.internalError_DBError)
    }

    /// 内部错误。
    public static var internalError_FailPreform: TCTbaasError {
        TCTbaasError(.internalError_FailPreform)
    }

    /// 服务器异常，请重试。
    public static var internalError_FailUrl: TCTbaasError {
        TCTbaasError(.internalError_FailUrl)
    }

    /// Flask内部错误。
    public static var internalError_FlaskException: TCTbaasError {
        TCTbaasError(.internalError_FlaskException)
    }

    /// Bcos无效的合约参数。
    public static var internalError_InvalidContractParam: TCTbaasError {
        TCTbaasError(.internalError_InvalidContractParam)
    }

    /// Bcos不支持的请求类型。
    public static var internalError_MethodTypeNotSupport: TCTbaasError {
        TCTbaasError(.internalError_MethodTypeNotSupport)
    }

    /// 错误码未定义。
    public static var internalError_NoDefineError: TCTbaasError {
        TCTbaasError(.internalError_NoDefineError)
    }

    /// Bcos服务器异常，请重试。
    public static var internalError_ServerError: TCTbaasError {
        TCTbaasError(.internalError_ServerError)
    }

    /// 服务器异常。
    public static var internalError_ServerException: TCTbaasError {
        TCTbaasError(.internalError_ServerException)
    }

    /// 服务异常，请重试。
    public static var internalError_ServiceError: TCTbaasError {
        TCTbaasError(.internalError_ServiceError)
    }

    /// 交易服务异常，请重试。
    public static var internalError_ServicePanic: TCTbaasError {
        TCTbaasError(.internalError_ServicePanic)
    }

    /// 交易服务内部错误。
    public static var internalError_TransactionService: TCTbaasError {
        TCTbaasError(.internalError_TransactionService)
    }

    /// 交易服务未知错误，请重试。
    public static var internalError_UnknownError: TCTbaasError {
        TCTbaasError(.internalError_UnknownError)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCTbaasError {
        TCTbaasError(.invalidParameterValue)
    }

    /// 参数格式不正确。
    public static var invalidParameterValue_IllegalFormat: TCTbaasError {
        TCTbaasError(.invalidParameterValue_IllegalFormat)
    }

    /// 参数取值不合法。
    public static var invalidParameterValue_IllegalValue: TCTbaasError {
        TCTbaasError(.invalidParameterValue_IllegalValue)
    }

    /// 参数值为空。
    public static var invalidParameterValue_ParameterEmpty: TCTbaasError {
        TCTbaasError(.invalidParameterValue_ParameterEmpty)
    }

    /// Bcos账号参数错误。
    public static var invalidParameter_AccountParamError: TCTbaasError {
        TCTbaasError(.invalidParameter_AccountParamError)
    }

    /// Bcos无效的机构信息。
    public static var invalidParameter_AgencyInvalid: TCTbaasError {
        TCTbaasError(.invalidParameter_AgencyInvalid)
    }

    /// Bcos新增机构网络关联信息入参错误。
    public static var invalidParameter_AgencyNetParamInvalid: TCTbaasError {
        TCTbaasError(.invalidParameter_AgencyNetParamInvalid)
    }

    /// Bcos所属联盟编号不能为空。
    public static var invalidParameter_AllianceIdOfNetEmpty: TCTbaasError {
        TCTbaasError(.invalidParameter_AllianceIdOfNetEmpty)
    }

    /// Bcos无效的合约编号。
    public static var invalidParameter_ContractIdInvalid: TCTbaasError {
        TCTbaasError(.invalidParameter_ContractIdInvalid)
    }

    /// Bcos数据已存在，请勿重复添加。
    public static var invalidParameter_DataHadExist: TCTbaasError {
        TCTbaasError(.invalidParameter_DataHadExist)
    }

    /// Bcos无效参数。
    public static var invalidParameter_EmptyParam: TCTbaasError {
        TCTbaasError(.invalidParameter_EmptyParam)
    }

    /// Bcos无效的失效时间。
    public static var invalidParameter_ExpireTimeInvalid: TCTbaasError {
        TCTbaasError(.invalidParameter_ExpireTimeInvalid)
    }

    /// Bcos前置的IP或端口无效。
    public static var invalidParameter_FrontConnFail: TCTbaasError {
        TCTbaasError(.invalidParameter_FrontConnFail)
    }

    /// Bcos IP格式错误。
    public static var invalidParameter_FrontIpInvalid: TCTbaasError {
        TCTbaasError(.invalidParameter_FrontIpInvalid)
    }

    /// Bcos新增前置服务参数错误。
    public static var invalidParameter_FrontParamError: TCTbaasError {
        TCTbaasError(.invalidParameter_FrontParamError)
    }

    /// Bcos前置服务调用失败。
    public static var invalidParameter_FrontRequestFail: TCTbaasError {
        TCTbaasError(.invalidParameter_FrontRequestFail)
    }

    /// 输入参数存在违规内容。
    public static var invalidParameter_InputDataViolation: TCTbaasError {
        TCTbaasError(.invalidParameter_InputDataViolation)
    }

    /// Bcos无效的合约参数。
    public static var invalidParameter_InvalidContractArg: TCTbaasError {
        TCTbaasError(.invalidParameter_InvalidContractArg)
    }

    /// Bcos无效的网络编号。
    public static var invalidParameter_NetIdInvalid: TCTbaasError {
        TCTbaasError(.invalidParameter_NetIdInvalid)
    }

    /// Bcos网络参数错误。
    public static var invalidParameter_NetParamError: TCTbaasError {
        TCTbaasError(.invalidParameter_NetParamError)
    }

    /// Bcos新增私钥用户参数错误。
    public static var invalidParameter_NewKeyUserParamError: TCTbaasError {
        TCTbaasError(.invalidParameter_NewKeyUserParamError)
    }

    /// Bcos无可删信息,请确认后重试。
    public static var invalidParameter_NoInfoToDelete: TCTbaasError {
        TCTbaasError(.invalidParameter_NoInfoToDelete)
    }

    /// Bcos没有有效的前置服务信息。
    public static var invalidParameter_NotFoundValidFront: TCTbaasError {
        TCTbaasError(.invalidParameter_NotFoundValidFront)
    }

    /// Bcos不能重复部署合约。
    public static var invalidParameter_ReDeployedContract: TCTbaasError {
        TCTbaasError(.invalidParameter_ReDeployedContract)
    }

    /// Bcos合约正在部署中，请勿重复操作。
    public static var invalidParameter_ReDeployingContract: TCTbaasError {
        TCTbaasError(.invalidParameter_ReDeployingContract)
    }

    /// Bcos无效的角色。
    public static var invalidParameter_RoleInvalid: TCTbaasError {
        TCTbaasError(.invalidParameter_RoleInvalid)
    }

    /// Bcos缺少参数。
    public static var missingParameter_EmptyParam: TCTbaasError {
        TCTbaasError(.missingParameter_EmptyParam)
    }

    /// 只有所有者可以操作。
    public static var operationDenied_NotOwner: TCTbaasError {
        TCTbaasError(.operationDenied_NotOwner)
    }

    /// Bcos查询不到数据。
    public static var resourceNotFound_EmptyData: TCTbaasError {
        TCTbaasError(.resourceNotFound_EmptyData)
    }

    public func asTbaasError() -> TCTbaasError {
        return self
    }
}
